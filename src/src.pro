# qmake .pro file for qdirstat/src
#
# Go to the project toplevel dir and build all Makefiles:
#
#     qmake
#
# Then build with
#
#     make
#

TEMPLATE	 = app

QT		+= widgets
CONFIG		+= debug
DEPENDPATH	+= .
MOC_DIR		 = .moc
OBJECTS_DIR	 = .obj
LIBS		+= -lz

major_is_less_5 = $$find(QT_MAJOR_VERSION, [234])
!isEmpty(major_is_less_5):DEFINES += 'Q_DECL_OVERRIDE=""'
isEmpty(INSTALL_PREFIX):INSTALL_PREFIX = /usr

TARGET		 = qdirstat
TARGET.files	 = qdirstat
TARGET.path	 = $$INSTALL_PREFIX/bin
INSTALLS	+= TARGET desktop icons


SOURCES		 = app/main.cpp					\
		   app/MainWindow.cpp				\
		   app/DebugHelpers.cpp				\
		   cleanup/CleanupCollection.cpp		\
		   cleanup/Cleanup.cpp				\
		   cleanup/StdCleanup.cpp			\
		   config/CleanupConfigPage.cpp			\
		   config/ConfigDialog.cpp			\
		   config/ExcludeRulesConfigPage.cpp		\
		   config/GeneralConfigPage.cpp			\
		   config/ListEditor.cpp			\
		   config/MimeCategoryConfigPage.cpp		\
		   core/DirInfo.cpp				\
		   core/DirTree.cpp				\
		   core/FileInfo.cpp				\
		   core/FileInfoIterator.cpp			\
		   core/FileInfoSet.cpp				\
		   core/FileInfoSorter.cpp			\
		   pkg/DpkgPkgManager.cpp			\
		   pkg/PacManPkgManager.cpp			\
		   pkg/PkgFilter.cpp				\
		   pkg/PkgInfo.cpp				\
		   pkg/PkgManager.cpp				\
		   pkg/PkgQuery.cpp				\
		   pkg/PkgReader.cpp				\
		   pkg/RpmPkgManager.cpp			\
		   reading/DirReadJob.cpp			\
		   reading/DirTreeCache.cpp			\
		   reading/ExcludeRules.cpp			\
		   util/ActionManager.cpp			\
		   util/AdaptiveTimer.cpp			\
		   util/DelayedRebuilder.cpp			\
		   util/DirSaver.cpp				\
		   util/Exception.cpp				\
		   util/Logger.cpp				\
		   util/MountPoints.cpp				\
		   util/Process.cpp				\
		   util/ProcessStarter.cpp			\
		   util/Refresher.cpp				\
		   util/Settings.cpp				\
		   util/SettingsHelpers.cpp			\
		   util/Subtree.cpp				\
		   util/SystemFileChecker.cpp			\
		   util/SysUtil.cpp				\
		   util/Trash.cpp				\
		   views/file-type/FileTypeStats.cpp		\
		   views/file-type/FileTypeStatsWindow.cpp	\
		   views/file-type/LocateFilesWindow.cpp	\
		   views/file-type/MimeCategorizer.cpp		\
		   views/file-type/MimeCategory.cpp		\
		   views/histo/BucketsTableModel.cpp		\
		   views/histo/FileSizeStats.cpp		\
		   views/histo/FileSizeStatsWindow.cpp		\
		   views/histo/HistogramDraw.cpp		\
		   views/histo/HistogramItems.cpp		\
		   views/histo/HistogramOverflowPanel.cpp	\
		   views/histo/HistogramView.cpp		\
		   views/treemap/TreemapTile.cpp		\
		   views/treemap/TreemapView.cpp		\
		   views/treeview/DataColumns.cpp		\
		   views/treeview/DirTreeModel.cpp		\
		   views/treeview/DirTreeView.cpp		\
		   views/treeview/PercentBar.cpp		\
		   views/treeview/SelectionModel.cpp		\
		   widgets/BreadcrumbNavigator.cpp		\
		   widgets/FileDetailsView.cpp			\
		   widgets/HeaderTweaker.cpp			\
		   widgets/OutputWindow.cpp


HEADERS		 = app/MainWindow.h				\
		   app/Version.h				\
		   app/DebugHelpers.h				\
		   cleanup/CleanupCollection.h			\
		   cleanup/Cleanup.h				\
		   cleanup/StdCleanup.h				\
		   config/CleanupConfigPage.h			\
		   config/ConfigDialog.h			\
		   config/ExcludeRulesConfigPage.h		\
		   config/GeneralConfigPage.h			\
		   config/ListEditor.h				\
		   config/ListMover.h				\
		   config/MimeCategoryConfigPage.h		\
		   core/DirInfo.h				\
		   core/DirTree.h				\
		   core/FileInfo.h				\
		   core/FileInfoIterator.h			\
		   core/FileInfoSet.h				\
		   core/FileInfoSorter.h			\
		   pkg/DpkgPkgManager.h				\
		   pkg/PacManPkgManager.h			\
		   pkg/PkgFilter.h				\
		   pkg/PkgInfo.h				\
		   pkg/PkgManager.h				\
		   pkg/PkgQuery.h				\
		   pkg/PkgReader.h				\
		   pkg/RpmPkgManager.h				\
		   reading/DirReadJob.h				\
		   reading/DirTreeCache.h			\
		   reading/ExcludeRules.h			\
		   util/ActionManager.h				\
		   util/AdaptiveTimer.h				\
		   util/DelayedRebuilder.h			\
		   util/DirSaver.h				\
		   util/Exception.h				\
		   util/Logger.h				\
		   util/MountPoints.h				\
		   util/Process.h				\
		   util/ProcessStarter.h			\
		   util/Qt4Compat.h				\
		   util/Refresher.h				\
		   util/Settings.h				\
		   util/SettingsHelpers.h			\
		   util/SignalBlocker.h				\
		   util/Subtree.h				\
		   util/SystemFileChecker.h			\
		   util/SysUtil.h				\
		   util/Trash.h					\
		   views/file-type/FileTypeStats.h		\
		   views/file-type/FileTypeStatsWindow.h	\
		   views/file-type/LocateFilesWindow.h		\
		   views/file-type/MimeCategorizer.h		\
		   views/file-type/MimeCategory.h		\
		   views/histo/BucketsTableModel.h		\
		   views/histo/FileSizeStats.h			\
		   views/histo/FileSizeStatsWindow.h		\
		   views/histo/HistogramItems.h			\
		   views/histo/HistogramView.h			\
		   views/treemap/TreemapTile.h			\
		   views/treemap/TreemapView.h			\
		   views/treeview/DataColumns.h			\
		   views/treeview/DirTreeModel.h		\
		   views/treeview/DirTreeView.h			\
		   views/treeview/PercentBar.h			\
		   views/treeview/SelectionModel.h		\
		   widgets/BreadcrumbNavigator.h		\
		   widgets/FileDetailsView.h			\
		   widgets/HeaderTweaker.h			\
		   widgets/OutputWindow.h


FORMS		 = app/main-window.ui				\
		   config/cleanup-config-page.ui		\
		   config/config-dialog.ui			\
		   config/exclude-rules-config-page.ui		\
		   config/general-config-page.ui		\
		   config/mime-category-config-page.ui		\
		   views/file-type/file-type-stats-window.ui	\
		   views/file-type/locate-files-window.ui	\
		   views/histo/file-size-stats-window.ui	\
		   widgets/file-details-view.ui			\
		   widgets/output-window.ui


RESOURCES	 = icons/icons.qrc

INCLUDEPATH	+= app				\
		   cleanup			\
		   config			\
		   core				\
		   pkg				\
		   reading			\
		   util				\
		   views/file-type		\
		   views/histo			\
		   views/treemap		\
		   views/treeview		\
		   widgets


desktop.files	= app/*.desktop
desktop.path	= $$INSTALL_PREFIX/share/applications

icons.files	= icons/qdirstat.svg
icons.path	= $$INSTALL_PREFIX/share/icons/hicolor/scalable/apps


mac:ICON	= icons/qdirstat.icns

# Regenerate this from the .png file with
#   sudo apt install icnsutils
#   png2icns qdirstat.icns qdirstat.png

