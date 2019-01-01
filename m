X-GM-THRID: 6641541425255153664
Date: Tue, 1 Jan 2019 06:52:44 -0800 (PST)
From: himadri18.07@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <dc077f72-2857-4ed2-809b-cff2f5c32cf3@googlegroups.com>
Subject: [PATCH] staging: rtl8192e: rename Channel to channel style
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_159_539636694.1546354364327"
X-Google-Token: ELz9reEFZWnkYJGgh1I0
X-Google-IP: 14.139.122.120

------=_Part_159_539636694.1546354364327
Content-Type: multipart/alternative; 
	boundary="----=_Part_160_197998827.1546354364327"

------=_Part_160_197998827.1546354364327
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

This patch fixes the checkpatch.pl warning:
        CHECK: Avoid CamelCase: <Channel>

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.c 
b/drivers/staging/rtl8192e/dot11d.c
index a1c096124683..687deac19796 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -15,7 +15,7 @@
 #include "dot11d.h"

 struct channel_list {
-       u8      Channel[32];
+       u8      channel[32];
        u8      Len;
 };

@@ -66,11 +66,11 @@ void Dot11d_Channelmap(u8 channel_plan, struct 
rtllib_device *ieee)
                memset(GET_DOT11D_INFO(ieee)->channel_map, 0,
                       sizeof(GET_DOT11D_INFO(ieee)->channel_map));
                for (i = 0; i < ChannelPlan[channel_plan].Len; i++) {
-                       if (ChannelPlan[channel_plan].Channel[i] < min_chan 
||
-                           ChannelPlan[channel_plan].Channel[i] > max_chan)
+                       if (ChannelPlan[channel_plan].channel[i] < min_chan 
||
+                           ChannelPlan[channel_plan].channel[i] > max_chan)
                                break;
                        GET_DOT11D_INFO(ieee)->channel_map[ChannelPlan
-                                       [channel_plan].Channel[i]] = 1;
+                                       [channel_plan].channel[i]] = 1;
                }
        }

------=_Part_160_197998827.1546354364327
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This patch fixes the checkpatch.pl warning:<br></div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 CHECK: Avoid CamelCase: &lt;Channel&gt;</d=
iv><div><br></div><div>Signed-off-by: Himadri Pandya &lt;himadri18.07@gmail=
.com&gt;</div><div>---</div><div>=C2=A0drivers/staging/rtl8192e/dot11d.c | =
8 ++++----</div><div>=C2=A01 file changed, 4 insertions(+), 4 deletions(-)<=
/div><div><br></div><div>diff --git a/drivers/staging/rtl8192e/dot11d.c b/d=
rivers/staging/rtl8192e/dot11d.c</div><div>index a1c096124683..687deac19796=
 100644</div><div>--- a/drivers/staging/rtl8192e/dot11d.c</div><div>+++ b/d=
rivers/staging/rtl8192e/dot11d.c</div><div>@@ -15,7 +15,7 @@</div><div>=C2=
=A0#include &quot;dot11d.h&quot;</div><div><br></div><div>=C2=A0struct chan=
nel_list {</div><div>-=C2=A0 =C2=A0 =C2=A0 =C2=A0u8=C2=A0 =C2=A0 =C2=A0 Cha=
nnel[32];</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0u8=C2=A0 =C2=A0 =C2=A0 chan=
nel[32];</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8=C2=A0 =C2=A0 =C2=A0 Len;<=
/div><div>=C2=A0};</div><div><br></div><div>@@ -66,11 +66,11 @@ void Dot11d=
_Channelmap(u8 channel_plan, struct rtllib_device *ieee)</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memset(GET_DOT11D_INFO(iee=
e)-&gt;channel_map, 0,</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sizeof(GET_DOT11D_INFO(ieee)-&gt;c=
hannel_map));</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 for (i =3D 0; i &lt; ChannelPlan[channel_plan].Len; i++) {</div><div=
>-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (ChannelPlan[channel_plan].Channel[i] &lt; min_chan ||</div><d=
iv>-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0ChannelPlan[channel_plan].Channel[i] &gt; max_ch=
an)</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0if (ChannelPlan[channel_plan].channel[i] &lt; min_c=
han ||</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ChannelPlan[channel_plan].channel[=
i] &gt; max_chan)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;</=
div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 GET_DOT11D_INFO(ieee)-&gt;channel_map[ChannelPlan</div><d=
iv>-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[chann=
el_plan].Channel[i]] =3D 1;</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[channel_plan].channel[i]] =3D 1;</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 }</div></div>
------=_Part_160_197998827.1546354364327--

------=_Part_159_539636694.1546354364327--

