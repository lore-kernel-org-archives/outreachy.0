X-GM-THRID: 6615312602732953600
X-Received: by 2002:a67:f312:: with SMTP id p18mr45651845vsf.22.1540247491866;
        Mon, 22 Oct 2018 15:31:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:d385:: with SMTP id b5ls325978vsj.2.gmail; Mon, 22 Oct
 2018 15:31:31 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63GXpFzQgV7zpU9JC5bFGcjiJMIGDcUhn/lq0muYpKVDS2+j61tH/peHma2/0VBbPeVMB7V
X-Received: by 2002:a67:dd87:: with SMTP id i7mr860493vsk.37.1540247491202;
        Mon, 22 Oct 2018 15:31:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540247491; cv=none;
        d=google.com; s=arc-20160816;
        b=L9UYvApph9+Mx2MU2DIyTfQt1FDniZlh/aFQjVnY7CjtKP1ZN85Zu8ROyJOC83IkPd
         n/hlI5RYnmrlzCZnXhMcklBrvlc/Q7zOR1mmGd6RORF7gu/oVPQ3nVh+wos4oCXdJPxX
         yoRa7cdbvPbdkdKKhlBWAeK7+DwvQpganECLST5PnYP7QtivuwuhYgcrVo7Ug2e94NTd
         frrPupCfpBcbhk06qLPHgZgCEQAot0sl8U409/ldnQ5gTpLubUUf4Imt3/aQtksprDJe
         hqCmYPn+5alxjIvvlpjKogDNKXLjASrQ2y2oy+2MMIWEd7F98wXDc93NhMZBoET9mOPk
         rHrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=IzquyG2hwJ2BGF+7yaRRqHjroYDcegrh0OUSz7w7QvU=;
        b=zT9wj5dq+KoWPwrjGbRJyGIKJtHzh5EuqRy+M1DfKuxyKNlZnhG+BtQFOBlpMG5I6A
         QIjiLYdPIML5tVFZ+r4VTrkHpkSqVU7v2A0/Adao+XMPI+zIU96Y5M6KGU9K9CTpLpI5
         DKvuGHZcEKDqGrh9t/guJ6UHfOrhbFNoEtcfSqqiIFEblRWw+Y0sIVXvfCDTSXYshuNK
         rMtrg9tPlQUXiFvf8a7KDOFjDovHasAmORwX6sFqQziFmCSKGT7+XkvfQgUNDQ+Kc7bY
         IHNiSs4aGhEZ7B3BhWDUmhMHbKaS5dkCn+llcYlvIYQC9iM+ptklD4nfKZlBmU7lDM+a
         CRjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F6CUhNFq;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id c74si1520146vkd.5.2018.10.22.15.31.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 15:31:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F6CUhNFq;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id x24-v6so16777109qtx.11
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 15:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=IzquyG2hwJ2BGF+7yaRRqHjroYDcegrh0OUSz7w7QvU=;
        b=F6CUhNFqBm1dX5PtOJQ3IkG7FPlT2shBGdy0fCT3No6oCv0JSjYR2CpQ4zBGcF90l/
         Y3WtOvT/UIabzUQtZ0hsk9XioyjK9dUmFhgIQ4TBbUqgzxvqshnbO++sqHkA9QyhfjUf
         gWi3nZiyPRvtNRjwjuyOw6mdg7e7/PZiJfIpu/bzxBr/l5Vkrv2X01TaVPQ3mcOgAM1b
         zIed4mShgCZgrekmLIgXPso9grnLjKH2uhZetb7RtFDZ3gJj82P8iDwZxwhy848lSI6F
         yDXEGnIQCRrUpOF3sqtaTSmec/Rz1nhGW1Yz9yxZObMlKB827+QoJVmtwlDaO++v7UC7
         rmqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IzquyG2hwJ2BGF+7yaRRqHjroYDcegrh0OUSz7w7QvU=;
        b=pWmey17JXjLFG2RIkFq4LS3UkYTAwUrlyOVrlJduaxwxBqwGMPJp9Y9vvHiuIwLyJu
         pQoBW/b48VahHZDqQcFsdo/kg1yWzFaQk/Xpmj9RsIwvTBMSZsa+/ZAV+Zssamu3j+DS
         Vw8cZOPCh7AVM6pAzsCZOtTXFg62hxyDtdMw7XQP6lj1H79J69IEuIzHK9RtPOr8k5L+
         Fb95AruCQ/qF4vz1so47FJwHVHFgeh/RXnjmnrCwCuxj8irL0vuFBtplddCfC8wraJUj
         mME4xmo7DrMsBpKaTuopmtKaduivcp1DfF7Z1mKigBsb3Xgq11QeVCLhG+9S70YUCLZ/
         Iv6w==
X-Gm-Message-State: AGRZ1gIx/yw5UJev9c14lVqtcVYofWaqMAwOAevC1zvirwHi4jovIiXA
	h5fHTapU8CVdHPvbz1tmtcY=
X-Received: by 2002:a0c:d7d1:: with SMTP id g17mr12486170qvj.183.1540247490679;
        Mon, 22 Oct 2018 15:31:30 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id 35-v6sm26181662qtr.91.2018.10.22.15.31.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Oct 2018 15:31:30 -0700 (PDT)
Date: Mon, 22 Oct 2018 19:31:26 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vboxvideo: Removed unnecessary parentheses
Message-ID: <20181022223126.smnsopiu4cavq6zh@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

This patch fixes the checkpatch.pl check:

vbox_main.c:119: CHECK: Unnecessary parentheses around 'rects[i].x2 <
crtc->x'
vbox_main.c:119: CHECK: Unnecessary parentheses around 'rects[i].y2 <
crtc->y'

Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
---
 drivers/staging/vboxvideo/vbox_main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vboxvideo/vbox_main.c b/drivers/staging/vboxvideo/vbox_main.c
index 429f6a453619..10a862674789 100644
--- a/drivers/staging/vboxvideo/vbox_main.c
+++ b/drivers/staging/vboxvideo/vbox_main.c
@@ -116,10 +116,10 @@ void vbox_framebuffer_dirty_rectangles(struct drm_framebuffer *fb,
 			struct vbva_cmd_hdr cmd_hdr;
 			unsigned int crtc_id = to_vbox_crtc(crtc)->crtc_id;
 
-			if ((rects[i].x1 > crtc->x + crtc->hwmode.hdisplay) ||
-			    (rects[i].y1 > crtc->y + crtc->hwmode.vdisplay) ||
-			    (rects[i].x2 < crtc->x) ||
-			    (rects[i].y2 < crtc->y))
+			if (rects[i].x1 > crtc->x + crtc->hwmode.hdisplay ||
+			    rects[i].y1 > crtc->y + crtc->hwmode.vdisplay ||
+			    rects[i].x2 < crtc->x ||
+			    rects[i].y2 < crtc->y)
 				continue;
 
 			cmd_hdr.x = (s16)rects[i].x1;
-- 
2.19.1


