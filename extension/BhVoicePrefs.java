package com.xj.winemu.sidebar;

import android.content.Context;
import android.content.SharedPreferences;

import java.util.UUID;

/**
 * Shared preferences + identity for the BannerHub voice-chat feature.
 *
 * <p>The activation toggle and nickname are set from the dashboard "Voice Chat"
 * screen (which runs in the main launcher process) but read in-game by the pill
 * overlay (which runs in the {@code :wine} process). Plain {@code MODE_PRIVATE}
 * SharedPreferences are cached per-process, so we open {@code bh_prefs} with
 * {@code MODE_MULTI_PROCESS} on the read path to force a reload of values the
 * other process may have written. (The game's {@code :wine} process is launched
 * after the toggle is set, so it reads fresh anyway, but multi-process keeps it
 * robust if both processes are alive.)
 *
 * <p>Identity is a stable, locally-generated {@code voice_client_id} (a UUID),
 * NOT a SteamID — voice chat here does not depend on Steam at all. The client id
 * is what nickname ownership is keyed to server-side, so re-opening the screen
 * sees your own claimed name as available.
 */
public final class BhVoicePrefs {

    private BhVoicePrefs() {}

    public static final String PREFS        = "bh_prefs";
    public static final String KEY_NICK     = "voice_nickname";
    public static final String KEY_CLIENT   = "voice_client_id";
    public static final String KEY_ENABLED  = "voice_pill_enabled";
    public static final String KEY_PILL_Y   = "voice_pill_y";

    /** bannerhub-api worker base — same worker that powers v6 voice. */
    public static final String WORKER = "https://bannerhub-api.the412banner.workers.dev";

    @SuppressWarnings("deprecation")
    public static SharedPreferences prefs(Context ctx) {
        // MODE_MULTI_PROCESS (4) — deprecated but reloads cross-process writes.
        return ctx.getSharedPreferences(PREFS, Context.MODE_MULTI_PROCESS);
    }

    /** Stable per-device client id; generated once and persisted. */
    public static String clientId(Context ctx) {
        SharedPreferences p = prefs(ctx);
        String id = p.getString(KEY_CLIENT, null);
        if (id == null || id.isEmpty()) {
            id = "bh-" + UUID.randomUUID().toString().replace("-", "").substring(0, 16);
            p.edit().putString(KEY_CLIENT, id).apply();
        }
        return id;
    }

    public static String nickname(Context ctx) {
        return prefs(ctx).getString(KEY_NICK, "");
    }

    public static void setNickname(Context ctx, String name) {
        prefs(ctx).edit().putString(KEY_NICK, name == null ? "" : name).apply();
    }

    public static boolean activated(Context ctx) {
        return prefs(ctx).getBoolean(KEY_ENABLED, false);
    }

    public static void setActivated(Context ctx, boolean on) {
        prefs(ctx).edit().putBoolean(KEY_ENABLED, on).apply();
    }

    /** The pill shows in-game only when activated AND a nickname is claimed. */
    public static boolean pillEnabled(Context ctx) {
        String n = nickname(ctx);
        return activated(ctx) && n != null && !n.trim().isEmpty();
    }
}
