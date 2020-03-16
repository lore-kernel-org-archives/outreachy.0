X-GM-THRID: 6804610075497332736
X-Received: by 2002:a37:9a81:: with SMTP id c123mr24044167qke.176.1584321743748;
        Sun, 15 Mar 2020 18:22:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:d44d:: with SMTP id r13ls1877078qvh.7.gmail; Sun, 15 Mar
 2020 18:22:22 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuWiCGAxoMITRY7WJike9yd89SerKSx5PpOQ3g+v6qCN8wr5OyOnXVbJ3i25/BUhYLZbj4D
X-Received: by 2002:a0c:c24e:: with SMTP id w14mr2269802qvh.18.1584321742499;
        Sun, 15 Mar 2020 18:22:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584321742; cv=none;
        d=google.com; s=arc-20160816;
        b=P5hd9/B4JUCcWJ5U8NH7MEMjC2l8jNNbYuRS/a3dA4MXDBPbgq8Lw7WyyPAlY6yRka
         wDFvHcXJkUL4XtK7mwSE+N0QBIXHv0A/qfYwoK62BvQvVBF0k/wwXrdn0tloKhU/72Rg
         IAOMAqaRitsX6Tiqualhdt+Sqtf4wHG2xHqHuesXhAfODVgX/z+2vwUDVnmhcvuxmGFb
         FVRPaPmYSjx96kvkg/y4dGexWpS5sjmZHfVSJrbMPkYslMhot4YJIhm3J4bxLh1iWSKi
         YYiN4PUUTW2hSJjnkvpd8BlkJmy01JRRq2aOkXtfG55CtNxmj6H+Xmy+8Peo8HUhp2Z2
         L8qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2w3BcywC6qLMWRSau3YariKt413T2XxunDWd9rx7Pl8=;
        b=0v3LqhWBt0+sCTMaguADnJmYQiLkS/O61CtNHu/TjCihMD926KVEIQ3LIb2vmMq1mS
         JQUh7K5Ju5qsudVkGjDJx+knbovaOCjKwK6zlMPiPheuvBRpN8IFD4JyhOmfAzaNZXJr
         i/e8R5xHXEYO73UZ2PnR0HFWXFA1YI/ua464ZOxdVkxlrue5aJ72krOOnDqwzwyz9VBL
         uAxyY0s/tGn5cjaebrsQhwPcEfwdQ+l0/Lt30NSEGaB62Pr590Hglqzt2LnMKJgTE6nL
         liILigG3+Q0XwGHzf4P6rGVzH69rWMK3lV/N8cHxj+DRRXVcZkGrE71oaoYmZUn2jfTs
         qRPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r3PrXqlH;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id e26si986353qka.2.2020.03.15.18.22.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 18:22:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r3PrXqlH;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id b72so8980377pfb.11
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 18:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2w3BcywC6qLMWRSau3YariKt413T2XxunDWd9rx7Pl8=;
        b=r3PrXqlHZo+8xtFPofFnwC9LkoWDlcCV0JcrwUJPdoHGpFNyQvF4W/dX5zNIrA3GR7
         GavmDsDGIouMhMiGIH6kB/S8MlmzYf0r4MZW/+8CthmhtiRvgPAKLXWszth0MI0hGTVv
         OOBlA9gqthWR0eybWsRS8dkKayAf31jypcC22ty26feh4Ahh6B271h7CyiSHnGj9+D4p
         mWtCgcdsNFebA1OBgenvqFvFbi0+cr11Ald8rERbEwRGtdAnK/fNFZ7Q2CGQZh3QXDsI
         +uStlpsdLh8BkFzizFsvvmSraFkKdLGkW7De6ROyEl+BZ40AOxdtSE/JBiNIfWg4S4gh
         eCqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2w3BcywC6qLMWRSau3YariKt413T2XxunDWd9rx7Pl8=;
        b=P+eKOE9Q9VEU38mNUziVKQC6dDGa2chqj0Qhz8zz8T8dw0V+TZF8CyeBerUn7l0Gyh
         5T+bUUKW2+HjJVMht2DRaklV5hxo7yHNp4oeftQYgVN7emUumFaAkX4phpkxwvMnS2sK
         ih/95S5qYYARhjLV6/KNlVa0DGZoBkJPYeyZKnYBR7et9mx/u9rwDlQ5qcuqakWXEXrt
         vMc4ffqR4DHn2auy+drPmIQkTpUlTII6R+nispwEztiJFRdFzjF03tPLSjWkldCnTILq
         V2KnJXg5GmTs7IWp6fBuE3VL7wPzS8dLFXnhUChlU+S+eloFQYCTGT1skqUd7acpVh6X
         Uvdg==
X-Gm-Message-State: ANhLgQ067zYYI4EGx+Z30mvqyTdFTHW/qs+nXiUSu6vDuw0juQbzKUaD
	83A/bE2AHEO5iFnkg+cD9co=
X-Received: by 2002:a63:4282:: with SMTP id p124mr25534816pga.59.1584321741557;
        Sun, 15 Mar 2020 18:22:21 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id i3sm16060860pfa.34.2020.03.15.18.22.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2020 18:22:20 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	Stefano Brivio <sbrivio@redhat.com>
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: wlan-ng: Fix line going over 80 characters
Date: Sun, 15 Mar 2020 18:21:48 -0700
Message-Id: <20200316012148.1200745-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Added a newline before the second argument for style, readability,
and consistency.

Please note checkpath reports the third argument as being over 80
characters, but not the second argument.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index b71756ab0394..f8485601aead 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -3317,7 +3317,8 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
 		break;
 
 	default:
-		netdev_warn(hw->wlandev->netdev, "Received frame on unsupported port=%d\n",
+		netdev_warn(hw->wlandev->netdev,
+			    "Received frame on unsupported port=%d\n",
 			    HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status));
 		break;
 	}
-- 
2.25.1


