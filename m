X-GM-THRID: 6261204257874116608
X-Received: by 10.13.234.87 with SMTP id t84mr11134310ywe.11.1457800735458;
        Sat, 12 Mar 2016 08:38:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.62.69 with SMTP id l66ls1686605ioa.54.gmail; Sat, 12 Mar
 2016 08:38:55 -0800 (PST)
X-Received: by 10.98.75.75 with SMTP id y72mr8653355pfa.10.1457800735036;
        Sat, 12 Mar 2016 08:38:55 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id y20si2047491pfa.2.2016.03.12.08.38.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 08:38:55 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id fl4so123091332pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 08:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6nxXlEFcNX8/1KndC2M0rqwOHawbRaoWghBmD86Yx44=;
        b=YPVJmd/NrGwg7IFBDT/VakMq0GH0La79LC9Yi/TgB5n4BVBJRnSV7gkjwiAUa8ckvE
         wF2w/BqtciGDVzq8yV+y/0IqfdKdWIG6spQ9bm3F/jNH1CdhYpPeyAg8r3n96I/gshfT
         /YTLj3wZvJjjUkPez3byjCKu1Pzjv8SUNofwrMDtJ2sxstmP4OXGPSaW+xNnOUEjNHbk
         zq8d+CktizIw6ffuuSt5rMtDeb06EeS9vDboUhQKiaRzgh/y+TLagItMW/33gpD0B5/4
         +TzPNoBmcVU1Vkli0VGPr02nPRd1dm9GnwyHhztNgHZdOaduyEU6sC9c8DX7L7OKJ8h7
         T2/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6nxXlEFcNX8/1KndC2M0rqwOHawbRaoWghBmD86Yx44=;
        b=OLp+iI4knZEQ7m/IiCY4+LrxAYZaHKcKJOaXMyFh1VeXmzkOdQb+DOwfk38M3bdVVW
         buKFlY2YErgvjt3Tx9PLHhic3vB5iJjgHiSbr6CQvBL3rrbOyYaQbivGuO4vrIMaTTTQ
         JIVysRvS1LWkSV+W6P7bwknSbUSae+0kbVS5qU3pSZuDuIV3PwFKGsIsqlcd9bEbzpO6
         ymjP+zO6ZJ/M3tTCh/0gNbf84zODOsnKELqaWtl6/Rd163uU2WvWSOMUCPyAHH0DpjNi
         CaI9NHgAK3JHMOqTr77Ss5v7QUWp/SKSkJA0Wp0Nc6c9PtJTXzu9h/85Fw3Bflz0lQY7
         4lxQ==
X-Gm-Message-State: AD7BkJK4TEtKKyUtwOHDsRwdgHFcWfZ1o9jU13MkE6UdVruXfJ3qXqIZX3Ws4Q7vRjLLmw==
X-Received: by 10.66.145.68 with SMTP id ss4mr24994896pab.79.1457800734906;
        Sat, 12 Mar 2016 08:38:54 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id 79sm20831124pfq.65.2016.03.12.08.38.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 08:38:54 -0800 (PST)
Date: Sat, 12 Mar 2016 22:08:26 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: wilc1000: Fix line over 80 characters
Message-ID: <88e076372415390e95a628f71ab86012c56d2212.1457800084.git.anchalj109@gmail.com>
References: <cover.1457800084.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457800084.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unwanted space between comment and
code so that they do not exceed 80
characters.Problem found using checkpatch.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/linux_mon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index 420f923..4e72f66 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -113,7 +113,7 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 		hdr->hdr.it_len = cpu_to_le16(sizeof(
 					struct wilc_wfi_radiotap_hdr));
 		hdr->hdr.it_present = cpu_to_le32
-				(1 << IEEE80211_RADIOTAP_RATE);                   /* | */
+				(1 << IEEE80211_RADIOTAP_RATE); /* | */
 		hdr->rate = 5; /* txrate->bitrate / 5; */
 	}
 
-- 
1.9.1


