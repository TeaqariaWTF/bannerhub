package com.xj.winemu.sidebar;

import android.content.Context;
import java.io.File;
import java.lang.reflect.Method;

/**
 * BhContainerCleanup — deletes the orphaned virtual container directory
 * left behind when a game is uninstalled.
 *
 * GameHub creates a Wine container at:
 *   {filesDir}/usr/home/virtual_containers/{gameId}/
 * but never deletes it during the standard uninstall flow.
 * This class is called from UninstallGameHelper.h() to fill that gap.
 */
public class BhContainerCleanup {

    public static void cleanup(String gameId) {
        if (gameId == null || gameId.isEmpty()) return;
        try {
            // ActivityThread is an internal class; use reflection to avoid SDK compile error
            Class<?> atClass = Class.forName("android.app.ActivityThread");
            Method m = atClass.getMethod("currentApplication");
            Context ctx = (Context) m.invoke(null);
            if (ctx == null) return;
            File dir = new File(ctx.getFilesDir(), "usr/home/virtual_containers/" + gameId);
            deleteRecursive(dir);
        } catch (Exception ignored) {}
    }

    private static void deleteRecursive(File f) {
        if (f == null || !f.exists()) return;
        if (f.isDirectory()) {
            File[] children = f.listFiles();
            if (children != null) {
                for (File child : children) {
                    deleteRecursive(child);
                }
            }
        }
        f.delete();
    }
}
