X-GM-THRID: 6667588004037525504
X-Received: by 2002:a1c:7c09:: with SMTP id x9mr371005wmc.19.1552418806683;
        Tue, 12 Mar 2019 12:26:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e005:: with SMTP id x5ls497416wmg.2.canary-gmail; Tue,
 12 Mar 2019 12:26:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwmlpCuK6nVatW8NUEP3/5UKEYeAtnInDW8P13eyx5K2Cblk5una0EQRpEfaDtsN0Hx6mkl
X-Received: by 2002:a1c:7a06:: with SMTP id v6mr360050wmc.17.1552418805766;
        Tue, 12 Mar 2019 12:26:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552418805; cv=none;
        d=google.com; s=arc-20160816;
        b=Hm7B8rNMeQeVzSOtO1MR45JKrDpnrO3RoYBiB69nNMLZ6zEzJARSEgD3I30wZXq+N/
         aw3jmtxmm4ONM1x/7LMHiE6+2sinENw2oohzjyfl/4o83yJBUqAdghMlCOjpQHO2SFZO
         Glckdo+OwohYMTxH+GA0sjkavvmv3PrmRHFST/oGA7TRbR1deT50vGRQ8Ji9Tg/7w72d
         wsznjjVAI9jYEl1Rz8kNXM3LsdTEIUqnOsPB+DsfNbNjQxXzA1WWJpaskXW0EXqFIG86
         Fvotq2wUp/06QfDU35Lb0bbIzXiGRoJCGQpyVUoes9VDuZ2Z2WcftVkHIjpAi4MYTRqm
         0LWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=MsJVOTb3pdBnDNmizIfaxGwrXG7R/ljbh6beYVVFEXI=;
        b=oamCxZ8BH/j7nE0wmsm1aBxe1U/YiP05QULqAtGrdXTiAn/85dxAmRgf/ph01ZlRml
         oqYOkgTx6DhcE5C+jrzSpjI6vnAA+UCzIcs71+EuB4EFScebWqQYWxnVoRTTvw/wHnVa
         Tn7vCOenvghVhHSaOf2QtuAgbxFx/fq/swtu3XLAKBTTDMeQteBPxgoT3ALzMqswLjCG
         PQz/2Z4KS51jkW11gqARLCQJp0n7mYGK9CduVhtLDcfFy4aQtIv8hA8/TrNPYyGAvBVa
         iPPIbMjGgTze98biTWaIAi31CfdzfPBFXXq1laPhYGpgWg8UCbAt/DHrUpCZAOFDlRd8
         3fqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hc4VZ3N4;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com. [2a00:1450:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id m1si501558wrj.4.2019.03.12.12.26.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 12:26:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) client-ip=2a00:1450:4864:20::52d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hc4VZ3N4;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52d.google.com with SMTP id j89so3300581edb.9
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 12:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=MsJVOTb3pdBnDNmizIfaxGwrXG7R/ljbh6beYVVFEXI=;
        b=hc4VZ3N4KhjGSahAZ2ZLiBCdS1JCBi3uE9pHDrUO4CJ9RKlUvWKOzNKvGuRiMjya5p
         14TsxpNodAN+NqcR3LKOTp2mwQGVhaVHLH4UrjhMmsxXOHUyfW9ydc5DFyVhn3F2FUVE
         ZuLdgu2ffiIWC27NYfvAvT2C4Ia5Nvo3tnCAkEZzPI8dUusiVJa1U1At/ga7yNbwfkbG
         Et3nbnu4UcG2QzzGyTqxLsJIDNpT+mMePsbuq2N7ui1Xe404Y2HuS8b2jiqn60iYxDSP
         89zQVSzGaJrdvQhOFgxhXoq7Y/tU4BFhjYRETdukebzL2u9cZqFaN0WVPjNU1a9B7mbQ
         HaLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=MsJVOTb3pdBnDNmizIfaxGwrXG7R/ljbh6beYVVFEXI=;
        b=GVTNceiqrspHArCYQsA4BzQedNpKqdh/utHHTj9buX1aRmoPk1QpGwP0yu/YFDKegZ
         Cjhwl6wiXJQW5uphj72U+mX2vwpag5qfp6QmhHHDGXKL9X7XEEIzkVSmX5OLs7/OdfFD
         JLaUwVFqRxZcA8qneqwLsAmyBM0CLtwohRx6cth1CTNlFixNaCiUtOybBuSfrBBLPx/w
         Y94RPlVUSObFVQlOVh9UPA1OpTQ4q7TvBUWqFWN+TE/WVk0yAqNb+niAwukbKpeiWUVY
         mCfnN5/ou2/qYWKimrcEhC+qXO65n6FfgKVephVlYuwBF+TM7JfJJ1HHpoTuAv7rPSdc
         xdLQ==
X-Gm-Message-State: APjAAAWiU3x7y5N8amWm+57HTyo45S8NSA9TNGJT9/uxkgBwoxpERzLi
	R7fB11hxXAzoihH+A+ZfGoU6IQzBrGEAHMtTiW+SXXWTQPQ=
X-Received: by 2002:aa7:da0f:: with SMTP id r15mr4731746eds.34.1552418805208;
 Tue, 12 Mar 2019 12:26:45 -0700 (PDT)
MIME-Version: 1.0
From: Sanjana Reddy <sanjana99reddy99@gmail.com>
Date: Wed, 13 Mar 2019 00:56:34 +0530
Message-ID: <CAO-bXGAEHi=_uf7jD+1_+iNhx594rRAak_OBfTVpGenhVUJ2Xg@mail.gmail.com>
Subject: [PATCH] Staging: rtl8188eu: rtw_recv.c: fixed a space indentation issue
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>, 
	gregkh@linuxfoundation.org
Cc: sanjana99reddy99@gmail.con
Content-Type: multipart/alternative; boundary="0000000000006d5cd70583eaab1c"

--0000000000006d5cd70583eaab1c
Content-Type: text/plain; charset="UTF-8"

Fixed a space in 2 lines which removed warnings.
Signed-off-by: Sanjana <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c
b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 1d83affc08ce..cc6f1a23da01 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80,
0xf3};

 /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
 static u8 rtw_bridge_tunnel_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
+        0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
 };

 static u8 rtw_rfc1042_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
+       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
 };

 static void rtw_signal_stat_timer_hdl(struct timer_list *t);
-- 
2.17.1

--0000000000006d5cd70583eaab1c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Fixed a space in 2 li=
nes which removed warnings.</div><div>Signed-off-by: Sanjana &lt;<a href=3D=
"mailto:sanjana99reddy99@gmail.com">sanjana99reddy99@gmail.com</a>&gt;</div=
><div>---</div><div>=C2=A0drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++-=
-</div><div>=C2=A01 file changed, 2 insertions(+), 2 deletions(-)</div><div=
><br></div><div>diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/dr=
ivers/staging/rtl8188eu/core/rtw_recv.c</div><div>index 1d83affc08ce..cc6f1=
a23da01 100644</div><div>--- a/drivers/staging/rtl8188eu/core/rtw_recv.c</d=
iv><div>+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c</div><div>@@ -24,11=
 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] =3D {0x80, 0xf3};</div=
><div><br></div><div>=C2=A0/* Bridge-Tunnel header (for EtherTypes ETH_P_AA=
RP and ETH_P_IPX) */</div><div>=C2=A0static u8 rtw_bridge_tunnel_header[] =
=3D {</div><div>-=C2=A0 =C2=A0 =C2=A0 =C2=A00xaa, 0xaa, 0x03, 0x00, 0x00, 0=
xf8</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 0xaa, 0xaa, 0x03, 0x00, 0x00, 0x=
f8</div><div>=C2=A0};</div><div><br></div><div>=C2=A0static u8 rtw_rfc1042_=
header[] =3D {</div><div>-=C2=A0 =C2=A0 =C2=A0 =C2=A00xaa, 0xaa, 0x03, 0x00=
, 0x00, 0x00</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A00xaa, 0xaa, 0x03, 0x00, =
0x00, 0x00</div><div>=C2=A0};</div><div><br></div><div>=C2=A0static void rt=
w_signal_stat_timer_hdl(struct timer_list *t);</div><div>--=C2=A0</div><div=
>2.17.1</div><div><br></div></div></div>

--0000000000006d5cd70583eaab1c--

