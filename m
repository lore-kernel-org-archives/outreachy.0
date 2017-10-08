X-GM-THRID: 6474612206173421568
Date: Sun, 8 Oct 2017 11:42:07 -0700 (PDT)
From: mamta shukla <mamtashukla555@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <f674ab2c-4484-41d9-ba71-6fafddc7792e@googlegroups.com>
Subject: [PATCH]:staging:most:aim-cdev:Reducing number of blank lines, to
 follow the coding style
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7350_1659093180.1507488127539"
X-Google-Token: EP_i6c4FJtAWiXFLkMo0
X-Google-IP: 103.81.36.219

------=_Part_7350_1659093180.1507488127539
Content-Type: multipart/alternative; 
	boundary="----=_Part_7351_1605690690.1507488127539"

------=_Part_7351_1605690690.1507488127539
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Reducing number of blank lines, to follow the linux kernel coding style.

Signed-off-by: mamta <mamtashukla555@gmail.com>
---
 drivers/staging/most/aim-
cdev/aim_cdev.mod.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 drivers/staging/most/aim-cdev/aim_cdev.mod.c

diff --git a/drivers/staging/most/aim-cdev/aim_cdev.mod.c 
b/drivers/staging/most/aim-cdev/aim_cdev.mod.c
new file mode 100644
index 0000000..0048f6c
--- /dev/null
+++ b/drivers/staging/most/aim-cdev/aim_cdev.mod.c
@@ -0,0 +1,26 @@
+#include <linux/module.h>
+#include <linux/vermagic.h>
+#include <linux/compiler.h>
+
+MODULE_INFO(vermagic, VERMAGIC_STRING);
+MODULE_INFO(name, KBUILD_MODNAME);
+
+__visible struct module __this_module
+__attribute__((section(".gnu.linkonce.this_module"))) = {
+       .name = KBUILD_MODNAME,
+       .init = init_module,
+#ifdef CONFIG_MODULE_UNLOAD
+       .exit = cleanup_module,
+#endif
+       .arch = MODULE_ARCH_INIT,
+};
+
+MODULE_INFO(intree, "Y");
+
+MODULE_INFO(staging, "Y");
+
+static const char __module_depends[]
+__used
+__attribute__((section(".modinfo"))) =
+"depends=mostcore";
+MODULE_INFO(srcversion, "9D77257EA6146867C072D85");

------=_Part_7351_1605690690.1507488127539
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Reducing number of blank lines, to follow the linux kernel=
 coding style.<br><br>Signed-off-by: mamta &lt;<a href=3D"mailto:mamtashukl=
a555@gmail.com" target=3D"_blank">mamtashukla555@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/most/aim-<div dir=3D"ltr"><wbr>cdev/aim_cdev.mod.c | =
26 ++++++++++++++++++++++++++<br>
=C2=A01 file changed, 26 insertions(+)<br>
=C2=A0create mode 100644 drivers/staging/most/aim-cdev/<wbr>aim_cdev.mod.c<=
br>
<br>
diff --git a/drivers/staging/most/aim-cde<wbr>v/aim_cdev.mod.c b/drivers/st=
aging/most/aim-cde<wbr>v/aim_cdev.mod.c<br>
new file mode 100644<br>
index 0000000..0048f6c<br>
--- /dev/null<br>
+++ b/drivers/staging/most/aim-cde<wbr>v/aim_cdev.mod.c<br>
@@ -0,0 +1,26 @@<br>
+#include &lt;linux/module.h&gt;<br>
+#include &lt;linux/vermagic.h&gt;<br>
+#include &lt;linux/compiler.h&gt;<br>
+<br>
+MODULE_INFO(vermagic, VERMAGIC_STRING);<br>
+MODULE_INFO(name, KBUILD_MODNAME);<br>
+<br>
+__visible struct module __this_module<br>
+__attribute__((section(&quot;.gnu.<wbr>linkonce.this_module&quot;))) =3D {=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0.name =3D KBUILD_MODNAME,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0.init =3D init_module,<br>
+#ifdef CONFIG_MODULE_UNLOAD<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0.exit =3D cleanup_module,<br>
+#endif<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0.arch =3D MODULE_ARCH_INIT,<br>
+};<br>
+<br>
+MODULE_INFO(intree, &quot;Y&quot;);<br>
+<br>
+MODULE_INFO(staging, &quot;Y&quot;);<br>
+<br>
+static const char __module_depends[]<br>
+__used<br>
+__attribute__((section(&quot;.modi<wbr>nfo&quot;))) =3D<br>
+&quot;depends=3Dmostcore&quot;;<br>
+MODULE_INFO(srcversion, &quot;9D77257EA6146867C072D85&quot;);<div class=3D=
"m_-105987430468845379gmail-yj6qo m_-105987430468845379gmail-ajU"><div id=
=3D"m_-105987430468845379gmail-:122" class=3D"m_-105987430468845379gmail-aj=
R"><img class=3D"m_-105987430468845379gmail-ajT CToWUd" src=3D"https://ci6.=
googleusercontent.com/proxy/RnNZfQn2o2xpggJQqefCOervMbPIci5mujDPJnvl43kv6Rt=
xjyh5gHN_JKVzeU-aaGz3pePFgxfoAAtZJZNx8mveVTc-11j98EfuAJVcumUenA=3Ds0-d-e1-f=
t#https://ssl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif"></div></div=
></div></div>
------=_Part_7351_1605690690.1507488127539--

------=_Part_7350_1659093180.1507488127539--

