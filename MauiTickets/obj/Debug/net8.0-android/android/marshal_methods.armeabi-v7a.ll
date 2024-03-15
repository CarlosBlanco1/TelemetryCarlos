; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [362 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [718 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 28873261, ; 3: Npgsql.dll => 0x1b8922d => 216
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 277
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 312
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 7: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 323
	i32 39109920, ; 8: Newtonsoft.Json.dll => 0x254c520 => 215
	i32 39485524, ; 9: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 40744412, ; 10: Xamarin.AndroidX.Camera.Lifecycle.dll => 0x26db5dc => 248
	i32 42244203, ; 11: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 332
	i32 42639949, ; 12: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 13: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 14: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 356
	i32 68219467, ; 15: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 16: Microsoft.Maui.Graphics.dll => 0x44bb714 => 212
	i32 82292897, ; 17: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 18: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 340
	i32 101534019, ; 19: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 295
	i32 117431740, ; 20: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 21: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 295
	i32 122350210, ; 22: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 123912772, ; 23: QRCoder => 0x762c244 => 218
	i32 134690465, ; 24: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 316
	i32 136584136, ; 25: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 355
	i32 140062828, ; 26: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 348
	i32 142721839, ; 27: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 28: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 29: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 30: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 251
	i32 176265551, ; 31: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 32: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 297
	i32 184328833, ; 33: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 34: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 35: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 245
	i32 220171995, ; 36: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 37: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 271
	i32 230752869, ; 38: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 39: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 40: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 41: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 42: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 177
	i32 261689757, ; 43: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 254
	i32 276479776, ; 44: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 45: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 273
	i32 280482487, ; 46: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 270
	i32 291076382, ; 47: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 48: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 49: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 353
	i32 318968648, ; 50: Xamarin.AndroidX.Activity.dll => 0x13031348 => 236
	i32 321597661, ; 51: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 52: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 331
	i32 342366114, ; 53: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 272
	i32 347068432, ; 54: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 225
	i32 360082299, ; 55: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 56: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 57: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 58: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 59: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 60: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 61: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 62: _Microsoft.Android.Resource.Designer => 0x17969339 => 358
	i32 403441872, ; 63: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 64: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 351
	i32 441335492, ; 65: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 255
	i32 442565967, ; 66: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 67: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 268
	i32 451504562, ; 68: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 69: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 70: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 71: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 72: System.dll => 0x1bff388e => 164
	i32 476646585, ; 73: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 270
	i32 486930444, ; 74: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 283
	i32 489220957, ; 75: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 329
	i32 498788369, ; 76: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 77: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 205
	i32 526420162, ; 78: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 79: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 316
	i32 530272170, ; 80: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 81: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 350
	i32 539058512, ; 82: Microsoft.Extensions.Logging => 0x20216150 => 201
	i32 540030774, ; 83: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 84: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 85: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 86: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 87: Jsr305Binding => 0x213954e7 => 309
	i32 569601784, ; 88: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 306
	i32 571435654, ; 89: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 198
	i32 577335427, ; 90: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 586578074, ; 91: MimeKit => 0x22f6789a => 213
	i32 601371474, ; 92: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 93: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 94: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 95: Xamarin.AndroidX.CustomView => 0x2568904f => 260
	i32 627931235, ; 96: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 342
	i32 639843206, ; 97: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 266
	i32 643868501, ; 98: System.Net => 0x2660a755 => 81
	i32 662205335, ; 99: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 100: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 302
	i32 666292255, ; 101: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 243
	i32 672442732, ; 102: System.Collections.Concurrent => 0x2814a96c => 8
	i32 677826120, ; 103: NETStandardQRCode.dll => 0x2866ce48 => 214
	i32 683518922, ; 104: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 105: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 106: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 318
	i32 693804605, ; 107: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 108: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 109: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 313
	i32 700358131, ; 110: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 709152836, ; 111: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 230
	i32 720511267, ; 112: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 317
	i32 722857257, ; 113: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 114: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 115: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 222
	i32 752232764, ; 116: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 752882528, ; 117: SQLitePCLRaw.provider.dynamic_cdecl.dll => 0x2ce01360 => 226
	i32 755313932, ; 118: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 233
	i32 759454413, ; 119: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 120: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 121: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 122: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 348
	i32 782533833, ; 123: Xamarin.Google.AutoValue.Annotations.dll => 0x2ea484c9 => 308
	i32 789151979, ; 124: Microsoft.Extensions.Options => 0x2f0980eb => 204
	i32 790371945, ; 125: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 261
	i32 804008546, ; 126: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 181
	i32 804715423, ; 127: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 128: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 275
	i32 809851609, ; 129: System.Drawing.Common.dll => 0x30455ad9 => 228
	i32 823281589, ; 130: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 131: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 132: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 133: System.Net.Quic => 0x31b69d60 => 71
	i32 839353180, ; 134: ZXing.Net.MAUI.Controls.dll => 0x3207835c => 322
	i32 843511501, ; 135: Xamarin.AndroidX.Print => 0x3246f6cd => 288
	i32 865465478, ; 136: zxing.dll => 0x3395f486 => 320
	i32 869139383, ; 137: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 333
	i32 873119928, ; 138: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 139: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 140: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 141: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 347
	i32 904024072, ; 142: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 143: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 144: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 344
	i32 928116545, ; 145: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 312
	i32 952186615, ; 146: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 952358589, ; 147: SQLitePCLRaw.nativelibrary => 0x38c3d6bd => 223
	i32 955402788, ; 148: Newtonsoft.Json => 0x38f24a24 => 215
	i32 956575887, ; 149: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 317
	i32 961460050, ; 150: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 337
	i32 966729478, ; 151: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 310
	i32 967690846, ; 152: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 272
	i32 975236339, ; 153: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 154: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 155: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 156: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 157: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 346
	i32 992768348, ; 158: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 159: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 160: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 200
	i32 1001831731, ; 161: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 162: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 292
	i32 1019214401, ; 163: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 164: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 195
	i32 1031528504, ; 165: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 311
	i32 1035644815, ; 166: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 241
	i32 1036536393, ; 167: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 168: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 327
	i32 1044663988, ; 169: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 170: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 279
	i32 1061503568, ; 171: Xamarin.Google.AutoValue.Annotations => 0x3f454250 => 308
	i32 1067306892, ; 172: GoogleGson => 0x3f9dcf8c => 174
	i32 1082857460, ; 173: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 174: Xamarin.Kotlin.StdLib => 0x409e66d8 => 314
	i32 1098259244, ; 175: System => 0x41761b2c => 164
	i32 1106973742, ; 176: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 191
	i32 1108272742, ; 177: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 349
	i32 1117529484, ; 178: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 343
	i32 1118262833, ; 179: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 339
	i32 1121599056, ; 180: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 278
	i32 1127624469, ; 181: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 203
	i32 1145483052, ; 182: System.Windows.Extensions.dll => 0x4446af2c => 231
	i32 1149092582, ; 183: Xamarin.AndroidX.Window => 0x447dc2e6 => 305
	i32 1157931901, ; 184: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 184
	i32 1168523401, ; 185: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 345
	i32 1170634674, ; 186: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 187: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 196
	i32 1175144683, ; 188: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 301
	i32 1178241025, ; 189: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 286
	i32 1202000627, ; 190: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 184
	i32 1204270330, ; 191: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 243
	i32 1204575371, ; 192: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 187
	i32 1208641965, ; 193: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 194: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 195: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 306
	i32 1253011324, ; 196: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 197: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 325
	i32 1264511973, ; 198: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 296
	i32 1267360935, ; 199: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 300
	i32 1273260888, ; 200: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 252
	i32 1275534314, ; 201: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 318
	i32 1278448581, ; 202: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 240
	i32 1292207520, ; 203: SQLitePCLRaw.core.dll => 0x4d0585a0 => 224
	i32 1293217323, ; 204: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 263
	i32 1308624726, ; 205: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 334
	i32 1309188875, ; 206: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 207: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 305
	i32 1324164729, ; 208: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 209: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 210: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 354
	i32 1364015309, ; 211: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 212: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 355
	i32 1376866003, ; 213: Xamarin.AndroidX.SavedState => 0x52114ed3 => 292
	i32 1379779777, ; 214: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 215: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 216: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 256
	i32 1408764838, ; 217: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 218: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 219: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 220: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 323
	i32 1434145427, ; 221: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 222: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 310
	i32 1439761251, ; 223: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 224: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 225: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 226: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 197
	i32 1457743152, ; 227: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 228: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 229: es\Microsoft.Maui.Controls.resources => 0x57152abe => 329
	i32 1461234159, ; 230: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 231: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 232: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 233: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 242
	i32 1470490898, ; 234: Microsoft.Extensions.Primitives => 0x57a5e912 => 205
	i32 1479771757, ; 235: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 236: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 237: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1488290336, ; 238: SixLabors.ImageSharp.dll => 0x58b58220 => 219
	i32 1490025113, ; 239: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 293
	i32 1521091094, ; 240: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 200
	i32 1526286932, ; 241: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 353
	i32 1536373174, ; 242: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 243: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 244: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 245: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 181
	i32 1550322496, ; 246: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 247: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 248: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 249: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 250: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 251: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 262
	i32 1592978981, ; 252: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 253: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 311
	i32 1601112923, ; 254: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604451928, ; 255: SQLiteNetExtensions => 0x5fa1fe58 => 221
	i32 1604827217, ; 256: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 257: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 258: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 282
	i32 1622358360, ; 259: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 260: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 304
	i32 1632842087, ; 261: Microsoft.Extensions.Configuration.Json => 0x61533167 => 192
	i32 1635184631, ; 262: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 266
	i32 1636350590, ; 263: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 259
	i32 1639515021, ; 264: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 265: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 266: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 267: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 180
	i32 1657153582, ; 268: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 269: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 298
	i32 1658251792, ; 270: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 307
	i32 1666713512, ; 271: SQLiteNetExtensions.dll => 0x635807a8 => 221
	i32 1670060433, ; 272: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 254
	i32 1675553242, ; 273: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 274: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 275: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 276: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1689493916, ; 277: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 183
	i32 1691477237, ; 278: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 279: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 280: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 315
	i32 1701541528, ; 281: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 282: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 225
	i32 1720223769, ; 283: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 275
	i32 1726116996, ; 284: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 285: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 286: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 250
	i32 1733338956, ; 287: MailKit => 0x6750a74c => 175
	i32 1743415430, ; 288: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 324
	i32 1744735666, ; 289: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 290: System.IO.Pipelines.dll => 0x68139a0d => 229
	i32 1746316138, ; 291: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 292: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 293: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 294: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 179
	i32 1763938596, ; 295: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 296: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 297: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 297
	i32 1767075704, ; 298: Microsoft.Extensions.Configuration.UserSecrets.dll => 0x69536f78 => 193
	i32 1770582343, ; 299: Microsoft.Extensions.Logging.dll => 0x6988f147 => 201
	i32 1776026572, ; 300: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 301: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 302: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 303: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 340
	i32 1788241197, ; 304: Xamarin.AndroidX.Fragment => 0x6a96652d => 268
	i32 1793755602, ; 305: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 332
	i32 1808609942, ; 306: Xamarin.AndroidX.Loader => 0x6bcd3296 => 282
	i32 1813058853, ; 307: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 314
	i32 1813201214, ; 308: Xamarin.Google.Android.Material => 0x6c13413e => 307
	i32 1818569960, ; 309: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 287
	i32 1818787751, ; 310: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 311: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 312: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 313: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 202
	i32 1829150748, ; 314: System.Windows.Extensions => 0x6d06a01c => 231
	i32 1847515442, ; 315: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 233
	i32 1853025655, ; 316: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 349
	i32 1858542181, ; 317: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 318: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 319: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 331
	i32 1879696579, ; 320: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 321: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 244
	i32 1888955245, ; 322: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 323: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 324: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 325
	i32 1898237753, ; 325: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 326: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 327: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 328: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 329: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 336
	i32 1956758971, ; 330: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 331: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 294
	i32 1968388702, ; 332: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 188
	i32 1983156543, ; 333: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 315
	i32 1985761444, ; 334: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 235
	i32 2003115576, ; 335: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 328
	i32 2011961780, ; 336: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 337: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 279
	i32 2026931361, ; 338: MailKit.dll => 0x78d084a1 => 175
	i32 2031763787, ; 339: Xamarin.Android.Glide => 0x791a414b => 232
	i32 2045470958, ; 340: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 341: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 190
	i32 2055257422, ; 342: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 274
	i32 2060060697, ; 343: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 344: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 327
	i32 2070888862, ; 345: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 346: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 199
	i32 2079903147, ; 347: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090495875, ; 348: SQLitePCLRaw.provider.dynamic_cdecl => 0x7c9a6f83 => 226
	i32 2090596640, ; 349: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2097405377, ; 350: QRCoder.dll => 0x7d03ddc1 => 218
	i32 2103459038, ; 351: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 227
	i32 2127167465, ; 352: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 353: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 354: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 355: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 356: Microsoft.Maui => 0x80bd55ad => 210
	i32 2169148018, ; 357: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 335
	i32 2181898931, ; 358: Microsoft.Extensions.Options.dll => 0x820d22b3 => 204
	i32 2192057212, ; 359: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 202
	i32 2193016926, ; 360: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 361: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 319
	i32 2201231467, ; 362: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 363: it\Microsoft.Maui.Controls.resources => 0x839595db => 337
	i32 2217644978, ; 364: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 301
	i32 2222056684, ; 365: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 366: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 283
	i32 2252106437, ; 367: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 368: Microsoft.EntityFrameworkCore => 0x86487ec9 => 183
	i32 2256313426, ; 369: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 370: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 371: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 189
	i32 2267999099, ; 372: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 234
	i32 2279755925, ; 373: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 290
	i32 2293034957, ; 374: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2294913272, ; 375: Npgsql => 0x88c998f8 => 216
	i32 2295906218, ; 376: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 377: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 378: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 341
	i32 2305521784, ; 379: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 380: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 238
	i32 2320631194, ; 381: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2334995809, ; 382: Npgsql.EntityFrameworkCore.PostgreSQL.dll => 0x8b2d3561 => 217
	i32 2340441535, ; 383: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 384: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 385: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 386: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 335
	i32 2368005991, ; 387: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 388: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 188
	i32 2378619854, ; 389: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 390: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 391: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 336
	i32 2401565422, ; 392: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 393: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 265
	i32 2411328690, ; 394: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 177
	i32 2421380589, ; 395: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 396: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 252
	i32 2427813419, ; 397: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 333
	i32 2435356389, ; 398: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 399: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 400: Microsoft.JSInterop.dll => 0x919672ca => 206
	i32 2454642406, ; 401: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 402: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 403: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 404: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 222
	i32 2465532216, ; 405: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 255
	i32 2471841756, ; 406: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 407: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 408: Microsoft.Maui.Controls => 0x93dba8a1 => 208
	i32 2483903535, ; 409: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 410: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 411: System.AppContext.dll => 0x94798bc5 => 6
	i32 2498657740, ; 412: BouncyCastle.Cryptography.dll => 0x94ee7dcc => 173
	i32 2501346920, ; 413: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 414: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 339
	i32 2505896520, ; 415: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 277
	i32 2522472828, ; 416: Xamarin.Android.Glide.dll => 0x9659e17c => 232
	i32 2537015816, ; 417: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 176
	i32 2538310050, ; 418: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 419: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 334
	i32 2561012416, ; 420: TicketLibrary => 0x98a5f2c0 => 357
	i32 2562349572, ; 421: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 422: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 423: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 338
	i32 2581783588, ; 424: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 278
	i32 2581819634, ; 425: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 300
	i32 2584250648, ; 426: MauiTickets.dll => 0x9a088918 => 0
	i32 2585220780, ; 427: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 428: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 429: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 178
	i32 2589602615, ; 430: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 431: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 196
	i32 2593496499, ; 432: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 343
	i32 2605712449, ; 433: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 319
	i32 2615233544, ; 434: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 269
	i32 2616218305, ; 435: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 203
	i32 2617129537, ; 436: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 437: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 438: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 259
	i32 2624644809, ; 439: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 264
	i32 2626831493, ; 440: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 338
	i32 2627185994, ; 441: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 442: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 443: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 273
	i32 2634653062, ; 444: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 185
	i32 2663391936, ; 445: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 234
	i32 2663698177, ; 446: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 447: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 448: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 449: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 450: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 451: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 180
	i32 2693849962, ; 452: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 453: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 298
	i32 2715334215, ; 454: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 455: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 456: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 457: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 458: Xamarin.AndroidX.Activity => 0xa2e0939b => 236
	i32 2735172069, ; 459: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 460: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 176
	i32 2737747696, ; 461: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 242
	i32 2740698338, ; 462: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 324
	i32 2740948882, ; 463: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 464: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 465: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 344
	i32 2754540824, ; 466: SQLitePCLRaw.nativelibrary.dll => 0xa42ef518 => 223
	i32 2758225723, ; 467: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 209
	i32 2764765095, ; 468: Microsoft.Maui.dll => 0xa4caf7a7 => 210
	i32 2765824710, ; 469: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 470: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 313
	i32 2778768386, ; 471: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 303
	i32 2779977773, ; 472: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 291
	i32 2785988530, ; 473: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 350
	i32 2788224221, ; 474: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 269
	i32 2801831435, ; 475: Microsoft.Maui.Graphics => 0xa7008e0b => 212
	i32 2803228030, ; 476: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 477: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 256
	i32 2819470561, ; 478: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 479: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 480: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 291
	i32 2824502124, ; 481: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2833784645, ; 482: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 182
	i32 2838993487, ; 483: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 280
	i32 2847789619, ; 484: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 185
	i32 2849599387, ; 485: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 486: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 303
	i32 2855708567, ; 487: Xamarin.AndroidX.Transition => 0xaa36a797 => 299
	i32 2861098320, ; 488: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 489: Microsoft.Maui.Essentials => 0xaa8a4878 => 211
	i32 2870099610, ; 490: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 237
	i32 2875164099, ; 491: Jsr305Binding.dll => 0xab5f85c3 => 309
	i32 2875220617, ; 492: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 493: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 267
	i32 2887636118, ; 494: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 495: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 179
	i32 2899753641, ; 496: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 497: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 498: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 499: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 500: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 501: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 199
	i32 2916838712, ; 502: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 304
	i32 2919462931, ; 503: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 504: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 239
	i32 2936416060, ; 505: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 506: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 507: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 508: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2965157864, ; 509: Xamarin.AndroidX.Camera.View => 0xb0bcb7e8 => 249
	i32 2968338931, ; 510: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 511: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 512: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 263
	i32 2987532451, ; 513: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 294
	i32 2991449226, ; 514: Xamarin.AndroidX.Camera.Core => 0xb24de48a => 247
	i32 2996846495, ; 515: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 276
	i32 3000842441, ; 516: Xamarin.AndroidX.Camera.View.dll => 0xb2dd38c9 => 249
	i32 3016983068, ; 517: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 296
	i32 3023353419, ; 518: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 519: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 271
	i32 3038032645, ; 520: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 358
	i32 3047751430, ; 521: Xamarin.AndroidX.Camera.Core.dll => 0xb5a8ff06 => 247
	i32 3053864966, ; 522: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 330
	i32 3056245963, ; 523: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 293
	i32 3057625584, ; 524: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 284
	i32 3059408633, ; 525: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 526: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 527: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 186
	i32 3075834255, ; 528: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 529: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099507092, ; 530: MauiTickets => 0xb8beb994 => 0
	i32 3099732863, ; 531: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 532: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 533: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 534: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 535: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 536: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 537: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 538: GoogleGson.dll => 0xbba64c02 => 174
	i32 3159123045, ; 539: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 540: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3171180504, ; 541: MimeKit.dll => 0xbd045fd8 => 213
	i32 3178803400, ; 542: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 285
	i32 3192346100, ; 543: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 544: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 545: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 186
	i32 3204380047, ; 546: System.Data.dll => 0xbefef58f => 24
	i32 3206372186, ; 547: NETStandardQRCode => 0xbf1d5b5a => 214
	i32 3209718065, ; 548: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 549: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 262
	i32 3215347189, ; 550: zxing => 0xbfa64df5 => 320
	i32 3220365878, ; 551: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 552: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 553: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 554: Xamarin.AndroidX.CardView => 0xc235e84d => 250
	i32 3265493905, ; 555: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 556: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 557: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 558: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 559: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3284441313, ; 560: SixLabors.ImageSharp => 0xc3c498e1 => 219
	i32 3286373667, ; 561: ZXing.Net.MAUI.dll => 0xc3e21523 => 321
	i32 3286872994, ; 562: SQLite-net.dll => 0xc3e9b3a2 => 220
	i32 3290767353, ; 563: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 564: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 565: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 566: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 330
	i32 3316684772, ; 567: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 568: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 260
	i32 3317144872, ; 569: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 570: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 244
	i32 3345895724, ; 571: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 289
	i32 3346324047, ; 572: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 286
	i32 3357674450, ; 573: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 347
	i32 3358260929, ; 574: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 575: SQLitePCLRaw.core => 0xc849ca45 => 224
	i32 3362336904, ; 576: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 237
	i32 3362522851, ; 577: Xamarin.AndroidX.Core => 0xc86c06e3 => 257
	i32 3366347497, ; 578: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 579: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 290
	i32 3381016424, ; 580: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 326
	i32 3395150330, ; 581: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 582: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 583: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 261
	i32 3406629867, ; 584: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 197
	i32 3413944578, ; 585: Xamarin.AndroidX.Camera.Camera2.dll => 0xcb7ca902 => 246
	i32 3421170118, ; 586: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 190
	i32 3421910702, ; 587: Xamarin.AndroidX.Camera.Camera2 => 0xcbf636ae => 246
	i32 3428513518, ; 588: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 194
	i32 3429136800, ; 589: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 590: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 591: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 264
	i32 3445260447, ; 592: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 593: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 207
	i32 3458724246, ; 594: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 345
	i32 3464190856, ; 595: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 178
	i32 3471940407, ; 596: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 597: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 598: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 346
	i32 3485117614, ; 599: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 600: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 601: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 253
	i32 3500000672, ; 602: Microsoft.JSInterop => 0xd09dc5a0 => 206
	i32 3509114376, ; 603: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 604: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 605: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 606: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 607: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 608: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 609: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 354
	i32 3592228221, ; 610: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 356
	i32 3597029428, ; 611: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 235
	i32 3598340787, ; 612: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3605570793, ; 613: BouncyCastle.Cryptography => 0xd6e8a4e9 => 173
	i32 3608519521, ; 614: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 615: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 616: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 288
	i32 3633644679, ; 617: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 239
	i32 3638274909, ; 618: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 619: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 274
	i32 3643446276, ; 620: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 351
	i32 3643854240, ; 621: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 285
	i32 3645089577, ; 622: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 623: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 189
	i32 3660523487, ; 624: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 625: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3676461095, ; 626: Xamarin.AndroidX.Camera.Lifecycle => 0xdb225827 => 248
	i32 3682565725, ; 627: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 245
	i32 3684561358, ; 628: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 253
	i32 3689375977, ; 629: System.Drawing.Common => 0xdbe768e9 => 228
	i32 3700866549, ; 630: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 631: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 258
	i32 3716563718, ; 632: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 633: Xamarin.AndroidX.Annotation => 0xdda814c6 => 238
	i32 3722202641, ; 634: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 192
	i32 3724971120, ; 635: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 284
	i32 3732100267, ; 636: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 637: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 182
	i32 3737834244, ; 638: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 639: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 640: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751582913, ; 641: ZXing.Net.MAUI.Controls => 0xdf9c9cc1 => 322
	i32 3751619990, ; 642: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 326
	i32 3754567612, ; 643: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 227
	i32 3758424670, ; 644: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 191
	i32 3786282454, ; 645: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 251
	i32 3792276235, ; 646: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 647: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 207
	i32 3802395368, ; 648: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 649: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 230
	i32 3819260425, ; 650: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 651: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 652: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 653: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 195
	i32 3842894692, ; 654: ZXing.Net.MAUI => 0xe50deb64 => 321
	i32 3844307129, ; 655: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 656: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 657: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 658: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 659: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3876362041, ; 660: SQLite-net => 0xe70c9739 => 220
	i32 3885497537, ; 661: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 662: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 299
	i32 3888767677, ; 663: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 289
	i32 3896106733, ; 664: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 665: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 257
	i32 3901907137, ; 666: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 667: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 342
	i32 3920810846, ; 668: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 669: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 302
	i32 3928044579, ; 670: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 671: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 672: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 287
	i32 3945713374, ; 673: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 674: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 675: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 241
	i32 3959773229, ; 676: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 276
	i32 3963903781, ; 677: Microsoft.Extensions.Configuration.UserSecrets => 0xec445f25 => 193
	i32 4003436829, ; 678: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 679: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 240
	i32 4023392905, ; 680: System.IO.Pipelines => 0xefd01a89 => 229
	i32 4025784931, ; 681: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 682: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 209
	i32 4049315751, ; 683: TicketLibrary.dll => 0xf15ba7a7 => 357
	i32 4054681211, ; 684: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 685: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 686: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 687: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 328
	i32 4094352644, ; 688: Microsoft.Maui.Essentials.dll => 0xf40add04 => 211
	i32 4099507663, ; 689: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 690: System.Private.Uri => 0xf462c30d => 86
	i32 4101236366, ; 691: Npgsql.EntityFrameworkCore.PostgreSQL => 0xf473e68e => 217
	i32 4101593132, ; 692: Xamarin.AndroidX.Emoji2 => 0xf479582c => 265
	i32 4101842092, ; 693: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 187
	i32 4103439459, ; 694: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 352
	i32 4126470640, ; 695: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 194
	i32 4127667938, ; 696: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 697: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 698: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 699: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 352
	i32 4151237749, ; 700: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 701: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 702: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 703: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 704: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 705: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 281
	i32 4185676441, ; 706: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 707: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 708: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 709: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 341
	i32 4256097574, ; 710: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 258
	i32 4258378803, ; 711: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 280
	i32 4260525087, ; 712: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 713: Microsoft.Maui.Controls.dll => 0xfea12dee => 208
	i32 4274976490, ; 714: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 715: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 281
	i32 4294648842, ; 716: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 198
	i32 4294763496 ; 717: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 267
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [718 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 216, ; 3
	i32 277, ; 4
	i32 312, ; 5
	i32 48, ; 6
	i32 323, ; 7
	i32 215, ; 8
	i32 80, ; 9
	i32 248, ; 10
	i32 332, ; 11
	i32 145, ; 12
	i32 30, ; 13
	i32 356, ; 14
	i32 124, ; 15
	i32 212, ; 16
	i32 102, ; 17
	i32 340, ; 18
	i32 295, ; 19
	i32 107, ; 20
	i32 295, ; 21
	i32 139, ; 22
	i32 218, ; 23
	i32 316, ; 24
	i32 355, ; 25
	i32 348, ; 26
	i32 77, ; 27
	i32 124, ; 28
	i32 13, ; 29
	i32 251, ; 30
	i32 132, ; 31
	i32 297, ; 32
	i32 151, ; 33
	i32 18, ; 34
	i32 245, ; 35
	i32 26, ; 36
	i32 271, ; 37
	i32 1, ; 38
	i32 59, ; 39
	i32 42, ; 40
	i32 91, ; 41
	i32 177, ; 42
	i32 254, ; 43
	i32 147, ; 44
	i32 273, ; 45
	i32 270, ; 46
	i32 54, ; 47
	i32 69, ; 48
	i32 353, ; 49
	i32 236, ; 50
	i32 83, ; 51
	i32 331, ; 52
	i32 272, ; 53
	i32 225, ; 54
	i32 131, ; 55
	i32 55, ; 56
	i32 149, ; 57
	i32 74, ; 58
	i32 145, ; 59
	i32 62, ; 60
	i32 146, ; 61
	i32 358, ; 62
	i32 165, ; 63
	i32 351, ; 64
	i32 255, ; 65
	i32 12, ; 66
	i32 268, ; 67
	i32 125, ; 68
	i32 152, ; 69
	i32 113, ; 70
	i32 166, ; 71
	i32 164, ; 72
	i32 270, ; 73
	i32 283, ; 74
	i32 329, ; 75
	i32 84, ; 76
	i32 205, ; 77
	i32 150, ; 78
	i32 316, ; 79
	i32 60, ; 80
	i32 350, ; 81
	i32 201, ; 82
	i32 51, ; 83
	i32 103, ; 84
	i32 114, ; 85
	i32 40, ; 86
	i32 309, ; 87
	i32 306, ; 88
	i32 198, ; 89
	i32 120, ; 90
	i32 213, ; 91
	i32 52, ; 92
	i32 44, ; 93
	i32 119, ; 94
	i32 260, ; 95
	i32 342, ; 96
	i32 266, ; 97
	i32 81, ; 98
	i32 136, ; 99
	i32 302, ; 100
	i32 243, ; 101
	i32 8, ; 102
	i32 214, ; 103
	i32 73, ; 104
	i32 155, ; 105
	i32 318, ; 106
	i32 154, ; 107
	i32 92, ; 108
	i32 313, ; 109
	i32 45, ; 110
	i32 230, ; 111
	i32 317, ; 112
	i32 109, ; 113
	i32 129, ; 114
	i32 222, ; 115
	i32 25, ; 116
	i32 226, ; 117
	i32 233, ; 118
	i32 72, ; 119
	i32 55, ; 120
	i32 46, ; 121
	i32 348, ; 122
	i32 308, ; 123
	i32 204, ; 124
	i32 261, ; 125
	i32 181, ; 126
	i32 22, ; 127
	i32 275, ; 128
	i32 228, ; 129
	i32 86, ; 130
	i32 43, ; 131
	i32 160, ; 132
	i32 71, ; 133
	i32 322, ; 134
	i32 288, ; 135
	i32 320, ; 136
	i32 333, ; 137
	i32 3, ; 138
	i32 42, ; 139
	i32 63, ; 140
	i32 347, ; 141
	i32 16, ; 142
	i32 53, ; 143
	i32 344, ; 144
	i32 312, ; 145
	i32 105, ; 146
	i32 223, ; 147
	i32 215, ; 148
	i32 317, ; 149
	i32 337, ; 150
	i32 310, ; 151
	i32 272, ; 152
	i32 34, ; 153
	i32 158, ; 154
	i32 85, ; 155
	i32 32, ; 156
	i32 346, ; 157
	i32 12, ; 158
	i32 51, ; 159
	i32 200, ; 160
	i32 56, ; 161
	i32 292, ; 162
	i32 36, ; 163
	i32 195, ; 164
	i32 311, ; 165
	i32 241, ; 166
	i32 35, ; 167
	i32 327, ; 168
	i32 58, ; 169
	i32 279, ; 170
	i32 308, ; 171
	i32 174, ; 172
	i32 17, ; 173
	i32 314, ; 174
	i32 164, ; 175
	i32 191, ; 176
	i32 349, ; 177
	i32 343, ; 178
	i32 339, ; 179
	i32 278, ; 180
	i32 203, ; 181
	i32 231, ; 182
	i32 305, ; 183
	i32 184, ; 184
	i32 345, ; 185
	i32 153, ; 186
	i32 196, ; 187
	i32 301, ; 188
	i32 286, ; 189
	i32 184, ; 190
	i32 243, ; 191
	i32 187, ; 192
	i32 29, ; 193
	i32 52, ; 194
	i32 306, ; 195
	i32 5, ; 196
	i32 325, ; 197
	i32 296, ; 198
	i32 300, ; 199
	i32 252, ; 200
	i32 318, ; 201
	i32 240, ; 202
	i32 224, ; 203
	i32 263, ; 204
	i32 334, ; 205
	i32 85, ; 206
	i32 305, ; 207
	i32 61, ; 208
	i32 112, ; 209
	i32 354, ; 210
	i32 57, ; 211
	i32 355, ; 212
	i32 292, ; 213
	i32 99, ; 214
	i32 19, ; 215
	i32 256, ; 216
	i32 111, ; 217
	i32 101, ; 218
	i32 102, ; 219
	i32 323, ; 220
	i32 104, ; 221
	i32 310, ; 222
	i32 71, ; 223
	i32 38, ; 224
	i32 32, ; 225
	i32 197, ; 226
	i32 103, ; 227
	i32 73, ; 228
	i32 329, ; 229
	i32 9, ; 230
	i32 123, ; 231
	i32 46, ; 232
	i32 242, ; 233
	i32 205, ; 234
	i32 9, ; 235
	i32 43, ; 236
	i32 4, ; 237
	i32 219, ; 238
	i32 293, ; 239
	i32 200, ; 240
	i32 353, ; 241
	i32 31, ; 242
	i32 138, ; 243
	i32 92, ; 244
	i32 181, ; 245
	i32 93, ; 246
	i32 49, ; 247
	i32 141, ; 248
	i32 112, ; 249
	i32 140, ; 250
	i32 262, ; 251
	i32 115, ; 252
	i32 311, ; 253
	i32 157, ; 254
	i32 221, ; 255
	i32 76, ; 256
	i32 79, ; 257
	i32 282, ; 258
	i32 37, ; 259
	i32 304, ; 260
	i32 192, ; 261
	i32 266, ; 262
	i32 259, ; 263
	i32 64, ; 264
	i32 138, ; 265
	i32 15, ; 266
	i32 180, ; 267
	i32 116, ; 268
	i32 298, ; 269
	i32 307, ; 270
	i32 221, ; 271
	i32 254, ; 272
	i32 48, ; 273
	i32 70, ; 274
	i32 80, ; 275
	i32 126, ; 276
	i32 183, ; 277
	i32 94, ; 278
	i32 121, ; 279
	i32 315, ; 280
	i32 26, ; 281
	i32 225, ; 282
	i32 275, ; 283
	i32 97, ; 284
	i32 28, ; 285
	i32 250, ; 286
	i32 175, ; 287
	i32 324, ; 288
	i32 149, ; 289
	i32 229, ; 290
	i32 169, ; 291
	i32 4, ; 292
	i32 98, ; 293
	i32 179, ; 294
	i32 33, ; 295
	i32 93, ; 296
	i32 297, ; 297
	i32 193, ; 298
	i32 201, ; 299
	i32 21, ; 300
	i32 41, ; 301
	i32 170, ; 302
	i32 340, ; 303
	i32 268, ; 304
	i32 332, ; 305
	i32 282, ; 306
	i32 314, ; 307
	i32 307, ; 308
	i32 287, ; 309
	i32 2, ; 310
	i32 134, ; 311
	i32 111, ; 312
	i32 202, ; 313
	i32 231, ; 314
	i32 233, ; 315
	i32 349, ; 316
	i32 58, ; 317
	i32 95, ; 318
	i32 331, ; 319
	i32 39, ; 320
	i32 244, ; 321
	i32 25, ; 322
	i32 94, ; 323
	i32 325, ; 324
	i32 89, ; 325
	i32 99, ; 326
	i32 10, ; 327
	i32 87, ; 328
	i32 336, ; 329
	i32 100, ; 330
	i32 294, ; 331
	i32 188, ; 332
	i32 315, ; 333
	i32 235, ; 334
	i32 328, ; 335
	i32 7, ; 336
	i32 279, ; 337
	i32 175, ; 338
	i32 232, ; 339
	i32 88, ; 340
	i32 190, ; 341
	i32 274, ; 342
	i32 154, ; 343
	i32 327, ; 344
	i32 33, ; 345
	i32 199, ; 346
	i32 116, ; 347
	i32 226, ; 348
	i32 82, ; 349
	i32 218, ; 350
	i32 227, ; 351
	i32 20, ; 352
	i32 11, ; 353
	i32 162, ; 354
	i32 3, ; 355
	i32 210, ; 356
	i32 335, ; 357
	i32 204, ; 358
	i32 202, ; 359
	i32 84, ; 360
	i32 319, ; 361
	i32 64, ; 362
	i32 337, ; 363
	i32 301, ; 364
	i32 143, ; 365
	i32 283, ; 366
	i32 157, ; 367
	i32 183, ; 368
	i32 41, ; 369
	i32 117, ; 370
	i32 189, ; 371
	i32 234, ; 372
	i32 290, ; 373
	i32 131, ; 374
	i32 216, ; 375
	i32 75, ; 376
	i32 66, ; 377
	i32 341, ; 378
	i32 172, ; 379
	i32 238, ; 380
	i32 143, ; 381
	i32 217, ; 382
	i32 106, ; 383
	i32 151, ; 384
	i32 70, ; 385
	i32 335, ; 386
	i32 156, ; 387
	i32 188, ; 388
	i32 121, ; 389
	i32 127, ; 390
	i32 336, ; 391
	i32 152, ; 392
	i32 265, ; 393
	i32 177, ; 394
	i32 141, ; 395
	i32 252, ; 396
	i32 333, ; 397
	i32 20, ; 398
	i32 14, ; 399
	i32 206, ; 400
	i32 135, ; 401
	i32 75, ; 402
	i32 59, ; 403
	i32 222, ; 404
	i32 255, ; 405
	i32 167, ; 406
	i32 168, ; 407
	i32 208, ; 408
	i32 15, ; 409
	i32 74, ; 410
	i32 6, ; 411
	i32 173, ; 412
	i32 23, ; 413
	i32 339, ; 414
	i32 277, ; 415
	i32 232, ; 416
	i32 176, ; 417
	i32 91, ; 418
	i32 334, ; 419
	i32 357, ; 420
	i32 1, ; 421
	i32 136, ; 422
	i32 338, ; 423
	i32 278, ; 424
	i32 300, ; 425
	i32 0, ; 426
	i32 134, ; 427
	i32 69, ; 428
	i32 178, ; 429
	i32 146, ; 430
	i32 196, ; 431
	i32 343, ; 432
	i32 319, ; 433
	i32 269, ; 434
	i32 203, ; 435
	i32 88, ; 436
	i32 96, ; 437
	i32 259, ; 438
	i32 264, ; 439
	i32 338, ; 440
	i32 31, ; 441
	i32 45, ; 442
	i32 273, ; 443
	i32 185, ; 444
	i32 234, ; 445
	i32 109, ; 446
	i32 158, ; 447
	i32 35, ; 448
	i32 22, ; 449
	i32 114, ; 450
	i32 180, ; 451
	i32 57, ; 452
	i32 298, ; 453
	i32 144, ; 454
	i32 118, ; 455
	i32 120, ; 456
	i32 110, ; 457
	i32 236, ; 458
	i32 139, ; 459
	i32 176, ; 460
	i32 242, ; 461
	i32 324, ; 462
	i32 54, ; 463
	i32 105, ; 464
	i32 344, ; 465
	i32 223, ; 466
	i32 209, ; 467
	i32 210, ; 468
	i32 133, ; 469
	i32 313, ; 470
	i32 303, ; 471
	i32 291, ; 472
	i32 350, ; 473
	i32 269, ; 474
	i32 212, ; 475
	i32 159, ; 476
	i32 256, ; 477
	i32 163, ; 478
	i32 132, ; 479
	i32 291, ; 480
	i32 161, ; 481
	i32 182, ; 482
	i32 280, ; 483
	i32 185, ; 484
	i32 140, ; 485
	i32 303, ; 486
	i32 299, ; 487
	i32 169, ; 488
	i32 211, ; 489
	i32 237, ; 490
	i32 309, ; 491
	i32 40, ; 492
	i32 267, ; 493
	i32 81, ; 494
	i32 179, ; 495
	i32 56, ; 496
	i32 37, ; 497
	i32 97, ; 498
	i32 166, ; 499
	i32 172, ; 500
	i32 199, ; 501
	i32 304, ; 502
	i32 82, ; 503
	i32 239, ; 504
	i32 98, ; 505
	i32 30, ; 506
	i32 159, ; 507
	i32 18, ; 508
	i32 249, ; 509
	i32 127, ; 510
	i32 119, ; 511
	i32 263, ; 512
	i32 294, ; 513
	i32 247, ; 514
	i32 276, ; 515
	i32 249, ; 516
	i32 296, ; 517
	i32 165, ; 518
	i32 271, ; 519
	i32 358, ; 520
	i32 247, ; 521
	i32 330, ; 522
	i32 293, ; 523
	i32 284, ; 524
	i32 170, ; 525
	i32 16, ; 526
	i32 186, ; 527
	i32 144, ; 528
	i32 125, ; 529
	i32 0, ; 530
	i32 118, ; 531
	i32 38, ; 532
	i32 115, ; 533
	i32 47, ; 534
	i32 142, ; 535
	i32 117, ; 536
	i32 34, ; 537
	i32 174, ; 538
	i32 95, ; 539
	i32 53, ; 540
	i32 213, ; 541
	i32 285, ; 542
	i32 129, ; 543
	i32 153, ; 544
	i32 186, ; 545
	i32 24, ; 546
	i32 214, ; 547
	i32 161, ; 548
	i32 262, ; 549
	i32 320, ; 550
	i32 148, ; 551
	i32 104, ; 552
	i32 89, ; 553
	i32 250, ; 554
	i32 60, ; 555
	i32 142, ; 556
	i32 100, ; 557
	i32 5, ; 558
	i32 13, ; 559
	i32 219, ; 560
	i32 321, ; 561
	i32 220, ; 562
	i32 122, ; 563
	i32 135, ; 564
	i32 28, ; 565
	i32 330, ; 566
	i32 72, ; 567
	i32 260, ; 568
	i32 24, ; 569
	i32 244, ; 570
	i32 289, ; 571
	i32 286, ; 572
	i32 347, ; 573
	i32 137, ; 574
	i32 224, ; 575
	i32 237, ; 576
	i32 257, ; 577
	i32 168, ; 578
	i32 290, ; 579
	i32 326, ; 580
	i32 101, ; 581
	i32 123, ; 582
	i32 261, ; 583
	i32 197, ; 584
	i32 246, ; 585
	i32 190, ; 586
	i32 246, ; 587
	i32 194, ; 588
	i32 163, ; 589
	i32 167, ; 590
	i32 264, ; 591
	i32 39, ; 592
	i32 207, ; 593
	i32 345, ; 594
	i32 178, ; 595
	i32 17, ; 596
	i32 171, ; 597
	i32 346, ; 598
	i32 137, ; 599
	i32 150, ; 600
	i32 253, ; 601
	i32 206, ; 602
	i32 155, ; 603
	i32 130, ; 604
	i32 19, ; 605
	i32 65, ; 606
	i32 147, ; 607
	i32 47, ; 608
	i32 354, ; 609
	i32 356, ; 610
	i32 235, ; 611
	i32 79, ; 612
	i32 173, ; 613
	i32 61, ; 614
	i32 106, ; 615
	i32 288, ; 616
	i32 239, ; 617
	i32 49, ; 618
	i32 274, ; 619
	i32 351, ; 620
	i32 285, ; 621
	i32 14, ; 622
	i32 189, ; 623
	i32 68, ; 624
	i32 171, ; 625
	i32 248, ; 626
	i32 245, ; 627
	i32 253, ; 628
	i32 228, ; 629
	i32 78, ; 630
	i32 258, ; 631
	i32 108, ; 632
	i32 238, ; 633
	i32 192, ; 634
	i32 284, ; 635
	i32 67, ; 636
	i32 182, ; 637
	i32 63, ; 638
	i32 27, ; 639
	i32 160, ; 640
	i32 322, ; 641
	i32 326, ; 642
	i32 227, ; 643
	i32 191, ; 644
	i32 251, ; 645
	i32 10, ; 646
	i32 207, ; 647
	i32 11, ; 648
	i32 230, ; 649
	i32 78, ; 650
	i32 126, ; 651
	i32 83, ; 652
	i32 195, ; 653
	i32 321, ; 654
	i32 66, ; 655
	i32 107, ; 656
	i32 65, ; 657
	i32 128, ; 658
	i32 122, ; 659
	i32 220, ; 660
	i32 77, ; 661
	i32 299, ; 662
	i32 289, ; 663
	i32 8, ; 664
	i32 257, ; 665
	i32 2, ; 666
	i32 342, ; 667
	i32 44, ; 668
	i32 302, ; 669
	i32 156, ; 670
	i32 128, ; 671
	i32 287, ; 672
	i32 23, ; 673
	i32 133, ; 674
	i32 241, ; 675
	i32 276, ; 676
	i32 193, ; 677
	i32 29, ; 678
	i32 240, ; 679
	i32 229, ; 680
	i32 62, ; 681
	i32 209, ; 682
	i32 357, ; 683
	i32 90, ; 684
	i32 87, ; 685
	i32 148, ; 686
	i32 328, ; 687
	i32 211, ; 688
	i32 36, ; 689
	i32 86, ; 690
	i32 217, ; 691
	i32 265, ; 692
	i32 187, ; 693
	i32 352, ; 694
	i32 194, ; 695
	i32 50, ; 696
	i32 6, ; 697
	i32 90, ; 698
	i32 352, ; 699
	i32 21, ; 700
	i32 162, ; 701
	i32 96, ; 702
	i32 50, ; 703
	i32 113, ; 704
	i32 281, ; 705
	i32 130, ; 706
	i32 76, ; 707
	i32 27, ; 708
	i32 341, ; 709
	i32 258, ; 710
	i32 280, ; 711
	i32 7, ; 712
	i32 208, ; 713
	i32 110, ; 714
	i32 281, ; 715
	i32 198, ; 716
	i32 267 ; 717
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
