X-GM-THRID: 6264811554202451968
X-Received: by 10.66.221.100 with SMTP id qd4mr26579910pac.0.1458640106245;
        Tue, 22 Mar 2016 02:48:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.85 with SMTP id 79ls4241002qge.15.gmail; Tue, 22 Mar
 2016 02:48:25 -0700 (PDT)
X-Received: by 10.129.87.74 with SMTP id l71mr26290009ywb.38.1458640105485;
        Tue, 22 Mar 2016 02:48:25 -0700 (PDT)
Return-Path: <deutschluz@gmail.com>
Received: from mail-io0-x229.google.com (mail-io0-x229.google.com. [2607:f8b0:4001:c06::229])
        by gmr-mx.google.com with ESMTPS id p10si18167884igh.1.2016.03.22.02.48.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 02:48:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of deutschluz@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) client-ip=2607:f8b0:4001:c06::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deutschluz@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) smtp.mailfrom=deutschluz@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x229.google.com with SMTP id c63so58319114iof.0
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 02:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=XGsu5T8bG4A4rO+/AFQwdPdOB91IajEG4oPzbxylXjU=;
        b=mOWtqDP0E/BcRnhWSel2nAZIJFmhc3dXBGq5OqWp6APczzu76u3WN/N3E/bHf6LG4I
         53HOPM7zU1ph+slwUG+kW6OfSDa2tmqer73jAt6plaqfqWiridF9JZBwspOeSQIynAdo
         ADNgKBc+FOChxNmJVMLwH3t7sEjmjYqH+/WWRYhh/f6neF42YFifWixUT3tK1t5KNvq1
         O+VOzKF/HmvaIhWe1XEdD1wbz25EXA6DYzPKajJYIqjLS9t7HGU1U7A8/26KLfcaGZQy
         YotQo4EZg/QPUjVM3/UFmPsFUmHuUvV+2rwyndAkE3Qe3G5kqU+Oj4bj2egUGfo7OcFf
         3OCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=XGsu5T8bG4A4rO+/AFQwdPdOB91IajEG4oPzbxylXjU=;
        b=W7VAp6krsNmZahrMZKLqKly1wuereamf+Me1Nm3TO0kwiwN5wl+PV2xLMe9ChfvmJz
         phKFl4SDUqHAm/XKRR/3d2FruL84Uw35v8OWLoiRGbItugNWqPHP6lpgQ41zhql9wnmK
         iVVWVmjuct/MdbVlOA3KosMSPPH+pAkf8XBW0n4RdHsu8wOdX6ymx92qvNBEEgkkiSum
         VcU+RYDvvARAzmca7levl8noxDD8213Rr67A0jmSUTB+ecEh5FGfVjcstOg6v5/ZSxg5
         SuFKXpq1Zuf7xy9NiO/J82ujHySG2LrKpq2NmKeZHA82z/313yoDUY3vMEIFYm3fyVnc
         eadw==
X-Gm-Message-State: AD7BkJKUvK+jhGEehycX3l2OnOeo/8RCjfy+rN+T4dXjmLFas2lM0QNM/6xFkrAdlCKcmt2cuKWZOY2tjx0i4Q==
MIME-Version: 1.0
X-Received: by 10.107.132.142 with SMTP id o14mr31455041ioi.66.1458640105278;
 Tue, 22 Mar 2016 02:48:25 -0700 (PDT)
Received: by 10.79.92.199 with HTTP; Tue, 22 Mar 2016 02:48:25 -0700 (PDT)
Date: Tue, 22 Mar 2016 02:48:25 -0700
Message-ID: <CAGLzxAr5=CPi-K9rsLHwqgKhmj=1jVHygQ3NHi=EZMcpGWQTUg@mail.gmail.com>
Subject: [PATCH] staging: rtl8192e: add more information to Kconfig
From: Angel Orejel <deutschluz@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a113f36ea54b447052ea01d0f

--001a113f36ea54b447052ea01d0f
Content-Type: text/plain; charset=UTF-8

[PATCH] staging: rtl8192e: add more information to Kconfig

The warnings were originating in the Kconfig file and were
essentially, asking for more information to display. A quick google
search returned the patch that separated the rtl driver from 2011 into
several separate drivers in order to comply with a certain IEEE
standard.

Signed-off-by: deutschluz <deutschluz@gmail.com>

# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
# On branch first-patch
# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)
#
#       modified:   drivers/staging/rtl8192e/Kconfig
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#       Kconf_warnings.txt
#       comedi_Kconfig_chkpatch.out
#       config
#       config-4.5
diff --git a/drivers/staging/rtl8192e/Kconfig
b/drivers/staging/rtl8192e/Kconfig
index 4602a47..cc800a3 100644
--- a/drivers/staging/rtl8192e/Kconfig
+++ b/drivers/staging/rtl8192e/Kconfig
@@ -17,7 +17,10 @@ config RTLLIB_CRYPTO_CCMP
        select CRYPTO_AES
        default y
        ---help---
-         CCMP crypto driver for rtllib.
+         CCMP crypto driver for rtllib. This makes
+          the driver compliant with the IEEE 80211i
+          standard. Refer to said standard for more
+          details.

          If you enabled RTLLIB, you want this.

@@ -28,7 +31,9 @@ config RTLLIB_CRYPTO_TKIP
        select CRYPTO_MICHAEL_MIC
        default y
        ---help---
-         TKIP crypto driver for rtllib.
+         TKIP crypto driver for rtllib.This makes
+          the driver comply with IEEE 80211i standard.
+          Refer to said standard for further details.

          If you enabled RTLLIB, you want this.

@@ -39,6 +44,8 @@ config RTLLIB_CRYPTO_WEP
        default y
        ---help---
          TKIP crypto driver for rtllib.
+          This makes the driver comply with IEEE
+          80211i standard.

          If you enabled RTLLIB, you want this.

--001a113f36ea54b447052ea01d0f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:10px">[PATCH] staging: rtl8192e: =
add more information to Kconfig</span><br style=3D"font-size:10px"><br styl=
e=3D"font-size:10px"><span style=3D"font-size:10px">The warnings were origi=
nating in the Kconfig file and were</span><br style=3D"font-size:10px"><spa=
n style=3D"font-size:10px">essentially, asking for more information to disp=
lay. A quick google</span><br style=3D"font-size:10px"><span style=3D"font-=
size:10px">search returned the patch that separated the rtl driver from 201=
1 into</span><br style=3D"font-size:10px"><span style=3D"font-size:10px">se=
veral separate drivers in order to comply with a certain IEEE</span><br sty=
le=3D"font-size:10px"><span style=3D"font-size:10px">standard.</span><br st=
yle=3D"font-size:10px"><br style=3D"font-size:10px"><span style=3D"font-siz=
e:10px">Signed-off-by: deutschluz &lt;</span><a href=3D"mailto:deutschluz@g=
mail.com" style=3D"font-size:10px">deutschluz@gmail.com</a><span style=3D"f=
ont-size:10px">&gt;</span><br style=3D"font-size:10px"><br style=3D"font-si=
ze:10px"><span style=3D"font-size:10px"># Please enter the commit message f=
or your changes. Lines starting</span><br style=3D"font-size:10px"><span st=
yle=3D"font-size:10px"># with &#39;#&#39; will be ignored, and an empty mes=
sage aborts the commit.</span><br style=3D"font-size:10px"><span style=3D"f=
ont-size:10px"># On branch first-patch</span><br style=3D"font-size:10px"><=
span style=3D"font-size:10px"># Changes to be committed:</span><br style=3D=
"font-size:10px"><span style=3D"font-size:10px">#=C2=A0 =C2=A0(use &quot;gi=
t reset HEAD &lt;file&gt;...&quot; to unstage)</span><br style=3D"font-size=
:10px"><span style=3D"font-size:10px">#</span><br style=3D"font-size:10px">=
<span style=3D"font-size:10px">#=C2=A0 =C2=A0 =C2=A0 =C2=A0modified:=C2=A0 =
=C2=A0drivers/staging/rtl8192e/</span><span style=3D"font-size:10px">Kconfi=
g</span><br style=3D"font-size:10px"><span style=3D"font-size:10px">#</span=
><br style=3D"font-size:10px"><span style=3D"font-size:10px"># Untracked fi=
les:</span><br style=3D"font-size:10px"><span style=3D"font-size:10px">#=C2=
=A0 =C2=A0(use &quot;git add &lt;file&gt;...&quot; to include in what will =
be committed)</span><br style=3D"font-size:10px"><span style=3D"font-size:1=
0px">#</span><br style=3D"font-size:10px"><span style=3D"font-size:10px">#=
=C2=A0 =C2=A0 =C2=A0 =C2=A0Kconf_warnings.txt</span><br style=3D"font-size:=
10px"><span style=3D"font-size:10px">#=C2=A0 =C2=A0 =C2=A0 =C2=A0comedi_Kco=
nfig_chkpatch.out</span><br style=3D"font-size:10px"><span style=3D"font-si=
ze:10px">#=C2=A0 =C2=A0 =C2=A0 =C2=A0config</span><br style=3D"font-size:10=
px"><span style=3D"font-size:10px">#=C2=A0 =C2=A0 =C2=A0 =C2=A0config-4.5</=
span><br style=3D"font-size:10px"><span style=3D"font-size:10px">diff --git=
 a/drivers/staging/rtl8192e/</span><span style=3D"font-size:10px">Kconfig</=
span><br style=3D"font-size:10px"><span style=3D"font-size:10px">b/drivers/=
staging/rtl8192e/</span><span style=3D"font-size:10px">Kconfig</span><br st=
yle=3D"font-size:10px"><span style=3D"font-size:10px">index 4602a47..cc800a=
3 100644</span><br style=3D"font-size:10px"><span style=3D"font-size:10px">=
--- a/drivers/staging/rtl8192e/</span><span style=3D"font-size:10px">Kconfi=
g</span><br style=3D"font-size:10px"><span style=3D"font-size:10px">+++ b/d=
rivers/staging/rtl8192e/</span><span style=3D"font-size:10px">Kconfig</span=
><br style=3D"font-size:10px"><span style=3D"font-size:10px">@@ -17,7 +17,1=
0 @@ config RTLLIB_CRYPTO_CCMP</span><br style=3D"font-size:10px"><span sty=
le=3D"font-size:10px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 select CRYPTO_AES</span><=
br style=3D"font-size:10px"><span style=3D"font-size:10px">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 default y</span><br style=3D"font-size:10px"><span style=3D"f=
ont-size:10px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 ---help---</span><br style=3D"fo=
nt-size:10px"><span style=3D"font-size:10px">-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0CCMP crypto driver for rtllib.</span><br style=3D"font-size:10px"><sp=
an style=3D"font-size:10px">+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CCMP crypto =
driver for rtllib. This makes</span><br style=3D"font-size:10px"><span styl=
e=3D"font-size:10px">+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 the driver complia=
nt with the IEEE 80211i</span><br style=3D"font-size:10px"><span style=3D"f=
ont-size:10px">+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 standard. Refer to said =
standard for more</span><br style=3D"font-size:10px"><span style=3D"font-si=
ze:10px">+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 details.</span><br style=3D"fo=
nt-size:10px"><br style=3D"font-size:10px"><span style=3D"font-size:10px">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 If you enabled RTLLIB, you want this.</s=
pan><br style=3D"font-size:10px"><br style=3D"font-size:10px"><span style=
=3D"font-size:10px">@@ -28,7 +31,9 @@ config RTLLIB_CRYPTO_TKIP</span><br s=
tyle=3D"font-size:10px"><span style=3D"font-size:10px">=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 select CRYPTO_MICHAEL_MIC</span><br style=3D"font-size:10px"><span =
style=3D"font-size:10px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 default y</span><br st=
yle=3D"font-size:10px"><span style=3D"font-size:10px">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ---help---</span><br style=3D"font-size:10px"><span style=3D"font-si=
ze:10px">-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0TKIP crypto driver for rtllib.<=
/span><br style=3D"font-size:10px"><span style=3D"font-size:10px">+=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0TKIP crypto driver for rtllib.This makes</span><=
br style=3D"font-size:10px"><span style=3D"font-size:10px">+=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 the driver comply with IEEE 80211i standard.</span><br=
 style=3D"font-size:10px"><span style=3D"font-size:10px">+=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Refer to said standard for further details.</span><br sty=
le=3D"font-size:10px"><br style=3D"font-size:10px"><span style=3D"font-size=
:10px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 If you enabled RTLLIB, you want t=
his.</span><br style=3D"font-size:10px"><br style=3D"font-size:10px"><span =
style=3D"font-size:10px">@@ -39,6 +44,8 @@ config RTLLIB_CRYPTO_WEP</span><=
br style=3D"font-size:10px"><span style=3D"font-size:10px">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 default y</span><br style=3D"font-size:10px"><span style=3D"f=
ont-size:10px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 ---help---</span><br style=3D"fo=
nt-size:10px"><span style=3D"font-size:10px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 TKIP crypto driver for rtllib.</span><br style=3D"font-size:10px"><s=
pan style=3D"font-size:10px">+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 This makes=
 the driver comply with IEEE</span><br style=3D"font-size:10px"><span style=
=3D"font-size:10px">+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 80211i standard.</s=
pan><br style=3D"font-size:10px"><br style=3D"font-size:10px"><span style=
=3D"font-size:10px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 If you enabled RTLLI=
B, you want this.</span><br></div>

--001a113f36ea54b447052ea01d0f--

