X-GM-THRID: 6208908204263342080
X-Received: by 10.66.228.100 with SMTP id sh4mr4236935pac.22.1445624093193;
        Fri, 23 Oct 2015 11:14:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.135 with SMTP id j7ls311022igx.17.gmail; Fri, 23 Oct
 2015 11:14:52 -0700 (PDT)
X-Received: by 10.66.169.104 with SMTP id ad8mr4244572pac.47.1445624092685;
        Fri, 23 Oct 2015 11:14:52 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si2360699pac.2.2015.10.23.11.14.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 11:14:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fv9so130166070pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 11:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=fC9DgJzr40IZPGMxpr5OsWqHUAyXRX1vs5swbutw6+Y=;
        b=sLzjYK/overswumI3vbc2aqezghO9f2AlBWEF9Agdr+SxhwJVA9c/bDwni6PJwgCPC
         YxGqkVaV6uhIkx1Rcc76Oz9y0U7JvgRHVLn/q15ZyRK7AzWWZ8kG3LwMcJ8E7VuXAW21
         3xqYIxiGo+pCd3L74ndRWT7jtocYvnZfm+NKDnuH52UPzczDoAg2d1TzpOh+3m1yRduG
         RDywZNNaGGH7x86HxdtwRAcjPJTswGS4+cjT28LCPYKm9CJC4jiQuhjNCj7un7qLSjc7
         mZ7T3WjAIfZU4nq9dn5av2PyQI6oAXn6TP3BIyXD9f0KYP/PVIZgPFC5kb8i3+QtoJvM
         2Hng==
X-Received: by 10.69.17.136 with SMTP id ge8mr6326564pbd.119.1445624092504;
        Fri, 23 Oct 2015 11:14:52 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.201.167])
        by smtp.gmail.com with ESMTPSA id j16sm20147749pbq.23.2015.10.23.11.14.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 23 Oct 2015 11:14:52 -0700 (PDT)
Date: Fri, 23 Oct 2015 23:44:48 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6656: Remove unnecessary braces and tab spacing
Message-ID: <20151023181448.GA19008@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes unnecessary braces around if-else single statement
blocks and unnecessary tab space aligning

Tool used is uncrustify.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/vt6656/power.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6656/power.c b/drivers/staging/vt6656/power.c
index d5912d2..13afce2 100644
--- a/drivers/staging/vt6656/power.c
+++ b/drivers/staging/vt6656/power.c
@@ -59,10 +59,9 @@ void vnt_enable_power_saving(struct vnt_private *priv, u16 listen_interval)
 	/* set period of power up before TBTT */
 	vnt_mac_write_word(priv, MAC_REG_PWBT, C_PWBT);
 
-	if (priv->op_mode != NL80211_IFTYPE_ADHOC) {
+	if (priv->op_mode != NL80211_IFTYPE_ADHOC)
 		/* set AID */
 		vnt_mac_write_word(priv, MAC_REG_AIDATIM, aid);
-	}
 
 	/* Warren:06-18-2004,the sequence must follow
 	 * PSEN->AUTOSLEEP->GO2DOZE
@@ -85,11 +84,10 @@ void vnt_enable_power_saving(struct vnt_private *priv, u16 listen_interval)
 
 		/* first time set listen next beacon */
 		vnt_mac_reg_bits_on(priv, MAC_REG_PSCTL, PSCTL_LNBCN);
-	} else {
+	} else
 
 		/* always listen beacon */
 		vnt_mac_reg_bits_on(priv, MAC_REG_PSCTL, PSCTL_ALBCN);
-	}
 
 	dev_dbg(&priv->usb->dev,  "PS:Power Saving Mode Enable...\n");
 }
@@ -109,7 +107,7 @@ void vnt_disable_power_saving(struct vnt_private *priv)
 
 	/* disable power saving hw function */
 	vnt_control_out(priv, MESSAGE_TYPE_DISABLE_PS, 0,
-						0, 0, NULL);
+	                0, 0, NULL);
 
 	/* clear AutoSleep */
 	vnt_mac_reg_bits_off(priv, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
-- 
1.9.1


