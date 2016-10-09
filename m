X-GM-THRID: 6339051787828330496
X-Received: by 10.129.155.145 with SMTP id s139mr8145114ywg.31.1476046567363;
        Sun, 09 Oct 2016 13:56:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.166 with SMTP id y35ls4405174ota.26.gmail; Sun, 09 Oct
 2016 13:56:07 -0700 (PDT)
X-Received: by 10.157.34.41 with SMTP id o38mr7396383ota.34.1476046567033;
        Sun, 09 Oct 2016 13:56:07 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id x14si2137648vkd.3.2016.10.09.13.56.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 13:56:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id x79so3388393lff.2
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 13:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CAJlYE4eC0rbidauu8VDNJhUHgwDS27mhaE+7HxWi7E=;
        b=vxtQOIoydakdR6+uphq0DAkFg3A0i/YsCSv/GXydFvNFhR+2IdUlKFeOAQQjbL8lMY
         /3E6KscnTsHLhA2SxVb7nFMCaIQYc9Y0BCUY/LMnfua48UeVXVNqeza7cIlQb6tpkF1g
         84821WiOF0uiplJwz0TDAdU2iIt5Btf3T8zkyQl2oyxg0q27a/gHJb/9u3QebWyWHnSN
         fPELrPhc9RHf28GhBe57nmHVowoNcfnxTGAoPbK7erwueAkpYcKMA2DBxqry/P/GGn6N
         KShmFsbReWulCgdBUIIsZGbNgxPlMjBGBbG4XGN8ZtGeBqiXkPSIBDkpjJ33d9Vtljnr
         bhIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CAJlYE4eC0rbidauu8VDNJhUHgwDS27mhaE+7HxWi7E=;
        b=gmhTkdNzNGIE09FTJiDBlBbpFpikhLbI9vl15T9//wUM80Modfl95RiSYi427u+CGJ
         DJ8IOVlOm06m/fBQFATkC5qtfcuBMBWnf/AJn4Dl4Dx+W+4M1hOs6XxW6iu+sWTzCV6c
         cAxBnhIvM5bJbSJeCKtnu+0T5kIDjCKFRoMLpAn15ul6C9WwGRq+Mdnem+wEqZ/OxsEb
         Yrn4KJ0WDSvEb3198G/8onxymS+txufhLB3veA5OY6o41FxY9lSNl7plAN5IAOmZkXV8
         yUqc5v6CtfYlQM2sTAH1YFtM0ScuoqALcT2f/B5b8FTmXZdRgdF18NKeAJiB4pfOxZaD
         liag==
X-Gm-Message-State: AA6/9RmQQn966GpX/FFK/8R80QeF1QFpIlEU4lEMcnKeV5xSbI+Wgw9TJuMy+oHW84GCww==
X-Received: by 10.195.12.170 with SMTP id er10mr24766739wjd.116.1476046566579;
        Sun, 09 Oct 2016 13:56:06 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id yo1sm33738079wjc.16.2016.10.09.13.56.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 09 Oct 2016 13:56:06 -0700 (PDT)
Date: Sun, 9 Oct 2016 23:56:05 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>
Subject: [PATCH v2] Staging: wilc1000: Unnecessary 'out of memory' message
Message-ID: <20161009205605.GA3816@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Delete unnecessary 'out of memory' message , warning found by
cehckpatch.pl tool.

WARNING: Possible unnecessary 'out of memory' message.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Changes in v2:
	-- delete the unnecessary braces.
---
 drivers/staging/wilc1000/host_interface.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 78f5613..ff3d267 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1722,10 +1722,8 @@ _WPAPtk_end_case_:
 
 	case PMKSA:
 		pu8keybuf = kmalloc((pstrHostIFkeyAttr->attr.pmkid.numpmkid * PMKSA_KEY_LEN) + 1, GFP_KERNEL);
-		if (!pu8keybuf) {
-			netdev_err(vif->ndev, "No buffer to send PMKSA Key\n");
+		if (!pu8keybuf)
 			return -ENOMEM;
-		}
 
 		pu8keybuf[0] = pstrHostIFkeyAttr->attr.pmkid.numpmkid;
 
@@ -2322,10 +2320,8 @@ static u32 Handle_ListenStateExpired(struct wilc_vif *vif,
 		wid.size = 2;
 		wid.val = kmalloc(wid.size, GFP_KERNEL);
 
-		if (!wid.val) {
-			netdev_err(vif->ndev, "Failed to allocate memory\n");
+		if (!wid.val)
 			return -ENOMEM;
-		}
 
 		wid.val[0] = u8remain_on_chan_flag;
 		wid.val[1] = FALSE_FRMWR_CHANNEL;
-- 
2.7.4


