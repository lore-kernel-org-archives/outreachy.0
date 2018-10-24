X-GM-THRID: 6615663139748839424
X-Received: by 2002:a24:248d:: with SMTP id f135-v6mr719085ita.7.1540357019482;
        Tue, 23 Oct 2018 21:56:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:aa1a:: with SMTP id s26-v6ls667003ioe.0.gmail; Tue, 23
 Oct 2018 21:56:58 -0700 (PDT)
X-Google-Smtp-Source: AJdET5e9ts1MCzJOOfN4mh1QL5JF4vcsm1QeIFvcdxFH0ahlDnP6XWzLLb4LqNGBsEKFQ0/DE5ja
X-Received: by 2002:a6b:d80d:: with SMTP id y13-v6mr11152813iob.23.1540357018695;
        Tue, 23 Oct 2018 21:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540357018; cv=none;
        d=google.com; s=arc-20160816;
        b=KlnsXgX9qdG0DlnNc+2U3RwozCJ2LQY+vsBfjH6YAFbNGbEF2zlYxUogexfwGwAerk
         HDUNzQh8bWExZ1dvVDVi+yw+FDOF9y25x3C6kEuOh2GF9WYHx9KanWqd0PGKr4n/AeEu
         zqVE/hlCF8rAxiKzNT2J5PqqEn8PaZUOmElFyryEW/bfg9xBMg6r0PCSRy6t3H8lwGCP
         uDTB7HkskhnZTLx/ceD17iaTBb75uXUkJuABNgWS0ZV6NOPxYEExdmMGnMGvi9ovZOJW
         WveOBWw4rz1MZN1hFE0xWmHPaf9HBLtav4KTlpjti0xVxVHianVN5zD0SIJ8nU4XWrdt
         c5iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NfZouOdn9JYYSOR2kOQNnypLNGNz2ic4JEcKUiU0BgA=;
        b=SrZvjk2XYluo3vw7uS7vBcDXDARTeTK1nSXFstjAl0r7p35WbeREE/aKjED4iLEzVI
         V3KFeedJ9QGOKfMRcR0QjNtJOwnHrUd1VNGabQ7ie7k2Qh9LReq9FK9YtTs+0qaObzTE
         Kyr4rc4TT+cbUVdPDKYusEmTAz8K6jeMqIF7DZVIJlpOyB+HAHMgOPaFJLTUmmyPMbZZ
         E4hHQTekUeKXWphVOvdowJWmkVFy1UzDrDlzyAB+01uWyglSrQIKJkSUI3LCw8lLfj17
         x2Tl2lgArvuxM04PLj9ZM/lfYaGol8YwSBy3NtX2tgQtfpuyFc8ptnGs/XCX9v2wqj4t
         CLQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NZxkjSgo;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id 199-v6si849846ita.2.2018.10.23.21.56.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 21:56:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NZxkjSgo;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id 22-v6so3038451oiz.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 21:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NfZouOdn9JYYSOR2kOQNnypLNGNz2ic4JEcKUiU0BgA=;
        b=NZxkjSgomcm3GvhkNRbD0dxGRt6h5Sf4TE12Np9s8v3DTSdCQHAD09hx/ny5uKr5Wk
         +orozIG7/0IIIEBIFAouChEVLNXOL58MVPZT7eVPZPNzQUQOwI9G5D2kDRj2HA3Aw5k2
         BD4lMhGDhfUQ1esVlRM8OTa7BnTqjYUh8w5uTlcHyHnXVzF3F7Il6W00DQRUORAKtZzd
         nyPn0e/EVD3y5XEDv4sIyyEeIcOKXl+AXnUGaeo6/pd24NY/DXbj/wmcaIPb45MSbaDW
         77buV4m6tWr85PpBUSpRfyBPY5ruY9YiqvshOeywUo0feY+kDmU+Zmb1j9XYTH9DghkH
         RVgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NfZouOdn9JYYSOR2kOQNnypLNGNz2ic4JEcKUiU0BgA=;
        b=o3u4KOoFZ/LWmO2hb07gJlrCK1QaKrFnqAyOtkWcz3f+fH1nCtThZGg7e6xxmU7e7s
         WUSc5r0ijbFWiKZ66Nb/o6syvz4ExTVS23YC9Zwb/PJwrap+5KkuzMxw04TKI5UUuxJL
         f4kAzahNIFac5dGk5BtqFZz1yx+hYyarGkOysuP9GM3bVMmq7VGZlZggd07lPPR4s8Gi
         EpRr0EMM/fH3p0qGooIzHYEOHNbuBzpBY6BMpC4ZevNKl3PuIr5Gq6VnCBLtSYCKVvWf
         idb96/ngyyHJynip8g9SGYpNw2k6x0dUEsitsmBDwbllwhMChAH69LpP2AEKwbnzjKTf
         1zxw==
X-Gm-Message-State: AGRZ1gLgnVdEKgrAMGgEThl1Ng+iuy3yYBxRakbl+fuVcufxM3QRTIj2
	suOVP03615ID6lm//8JfZzdYiSbxUXnusA==
X-Received: by 2002:aca:e64b:: with SMTP id d72-v6mr553063oih.314.1540357017992;
        Tue, 23 Oct 2018 21:56:57 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id 43sm1133227otz.75.2018.10.23.21.56.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 21:56:57 -0700 (PDT)
Date: Wed, 24 Oct 2018 00:56:53 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	NeilBrown <neil@brown.name>,
	Christian =?iso-8859-1?Q?L=FCtke-Stetzkamp?= <christian@lkamp.de>,
	Kimberly Brown <kimbrownkd@gmail.com>,
	John Crispin <blogic@openwrt.org>, devel@driverdev.osuosl.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2] staging: mt7621-dma: Add braces around else branches
Message-ID: <20181024045653.GA2864@v>
References: <20181023211142.GA2661@v>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181023211142.GA2661@v>
User-Agent: Mutt/1.9.4 (2018-02-28)

Add braces around else branches in conditional statements that include
branches with multiple statements. This style complies with the Linux
kernel coding style and improves consistency and readability. Issues found by
checkpatch.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
---
Changes in v2:
- Added people and mailing lists from get_maintainer.pl to the CC list
- Added Reviewed-by line

 drivers/staging/mt7621-dma/mtk-hsdma.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index df6ebf41bdea..35556f024aa1 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -418,8 +418,9 @@ static void mtk_hsdma_chan_done(struct mtk_hsdam_engine *hsdma,
 			vchan_cookie_complete(&desc->vdesc);
 			chan_issued = gdma_next_desc(chan);
 		}
-	} else
+	} else {
 		dev_dbg(hsdma->ddev.dev, "no desc to complete\n");
+	}
 
 	if (chan_issued)
 		set_bit(chan->id, &hsdma->chan_issued);
@@ -456,8 +457,9 @@ static void mtk_hsdma_issue_pending(struct dma_chan *c)
 		if (gdma_next_desc(chan)) {
 			set_bit(chan->id, &hsdma->chan_issued);
 			tasklet_schedule(&hsdma->task);
-		} else
+		} else {
 			dev_dbg(hsdma->ddev.dev, "no desc to issue\n");
+		}
 	}
 	spin_unlock_bh(&chan->vchan.lock);
 }
-- 
2.17.1


