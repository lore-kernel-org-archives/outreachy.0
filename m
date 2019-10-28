X-GM-THRID: 6751912583325810688
X-Received: by 2002:a92:db0c:: with SMTP id b12mr19635439iln.33.1572277155883;
        Mon, 28 Oct 2019 08:39:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:aa09:: with SMTP id s9ls2709251ioe.5.gmail; Mon, 28 Oct
 2019 08:39:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxpbY+Z9S4+DYrDH/COclYDDTzeDWi8SY0sDEqTYjsBz7+Bg2Yz1fQEN053SyZoiG/aSw0b
X-Received: by 2002:a5e:d502:: with SMTP id e2mr6474365iom.224.1572277154597;
        Mon, 28 Oct 2019 08:39:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572277154; cv=none;
        d=google.com; s=arc-20160816;
        b=jHYK3gQm34M4EajYTNJRGQCCpxTlD/1LGdY3gvi4RFGvZWlJAeum1VFyHTMtIghSr3
         nhA6dISNv7Kq6wj+BmNklTr0x/w2V8xf4xoiV/FRP/beA5+YOlllGDrdEjuUEJAkNA8c
         8zxO9hwOdiuiU4kZITltVtm54VfcI7LPvpW9vpo5m1t/B7IBL38S8bb3DJts3n1DLLsf
         z2RK7a9UEalxb4dndmitl3oqMyoFtpUwwopaPtF9V2s+t5cXn3u6NCIlQWEw4Rkvk2Ia
         lvr7iy28nU764heK75hyD07hxhkbG43Nb/ZjJ5futJ9dTC2vJSRuuvUDuBJ7IrhgVvIU
         OtwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jGuqyUAqHlQaOIqeuq1FvB8I+0XN2CCaqS3R8KrwwS8=;
        b=Y30nI0IrBYjFRNewRqdgRz8ZC/qP3Q4svOFwfwgVTgtRK+T1YTlhmPgP3w57AKc5iL
         BsbtBaVNI1Aps/77zixkpihFcon1VwI2wK4p1BnE3UzEPLz5kKt4LyD18SUnGArzbNvM
         Js3Q7tugTW0qifPEpUbbeDN4ZTJhAoQxXc1xDDaRBns8jtiZGYo0w0QkuMzfU6stM9hF
         6tFnq/dKAR86Cl9C+tLVCk2dDHp09nTlpY6r0GyDb+rlj6ffIFigK8y6/SR3i4vIlQ4G
         k4ThoYDjHS0Wo3USs657B+jPAO7JjSs3Wy5XEoIS76ArQwVQHdIiVmDgISp1v3T7C3+l
         3RRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kuNp+E9V;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id a17si948438iok.0.2019.10.28.08.39.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:39:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kuNp+E9V;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id q70so8851618qke.12
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 08:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jGuqyUAqHlQaOIqeuq1FvB8I+0XN2CCaqS3R8KrwwS8=;
        b=kuNp+E9V5EDjkD+hU886wEFlkGJAKlDHlN5v0LpjyEmVmh6lYG9qlpOSHnCAlaAL4a
         7Oi5hpSouapmuPH/xYHZfByCc++JM3+dNrOXhWDexUWiASrFLlkfNlvpDuAWygVxtHU1
         d159ttqrVywPDhJdaxyeHcAxEQVWidnEquJZUCRK9gfkxw5jgnvsmSp2SCPC4KSn32YY
         Dd0PotfFt78OCZht5zwpXgK9XKRUtfzcSaB4g23eZlyjj/iGDKc1p4EjuyfmTm0dw+zv
         Xyf+0hEwQbZl49EHPWIbTDPOCT1V9cHvE6PMiFE/Wp/V9c/leeX+/B3yPJLFlIbD3E12
         YEYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jGuqyUAqHlQaOIqeuq1FvB8I+0XN2CCaqS3R8KrwwS8=;
        b=joj9TyQReWryspFOK7rm4IEalvksg8E0F6CiVjS70jl7sqKNhGtLxAFZ/T5RcY4OeN
         hvmyi6q3Q94oEGM+kmDeqWmDjcnWqQOhRd4vLYEQ+HGaQWroJl7QEuP31GSzSwjtNm1Q
         tV8sqXfv+Jc6RB5FaRYtkA60lmItxEez3W0rUPGR05PYuoRntHQ0iAiU8raPjSeCUd3R
         Iipv1zXJVS/vFpxnR2ATB1+3S9hrePLqgpUY0tk9/mHXb8I7pm4vtcaTIqMQTyhhm9Me
         1VQB7wLiPRezMcwmocBN/rA6bBbudvVTOpSsAaa7phlwi7MAq1byHp+fauuNo70AGpo6
         1B2w==
X-Gm-Message-State: APjAAAVH1rNA4+loKKh9EvZy4lRveAjKDHiRjnvDEmR7saf7TcOuLyHS
	WPkttNmhJTRZ52gs4KukH1gPLUYNkqeTaA==
X-Received: by 2002:a05:620a:15cc:: with SMTP id o12mr2537160qkm.252.1572277153869;
        Mon, 28 Oct 2019 08:39:13 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id g126sm6668657qkb.133.2019.10.28.08.39.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:39:13 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:39:08 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/2] staging: rtl8712: Remove lines before a close brace
Message-ID: <359179720fcf90dd7aa35faab5d074bc829fa192.1572276208.git.cristianenavescardoso09@gmail.com>
References: <cover.1572276208.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572276208.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix Blank lines aren't necessary before a close brace '}'. Issue found
by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 36d5d2c..06de031 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -289,7 +289,6 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
 			r8712_free_recvframe(precv_frame, pfree_recv_queue);
 			prtnframe = NULL;
 		}
-
 	}
 	if ((ismfrag == 0) && (fragnum != 0)) {
 		/* the last fragment frame
@@ -438,7 +437,6 @@ void r8712_rxcmd_event_hdl(struct _adapter *padapter, void *prxcmdbuf)
 		r8712_event_handle(padapter, (__le32 *)poffset);
 		poffset += (cmd_len + 8);/*8 bytes alignment*/
 	} while (le32_to_cpu(voffset) & BIT(31));
-
 }
 
 static int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl,
-- 
2.7.4


