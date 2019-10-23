X-GM-THRID: 6750983693634895872
X-Received: by 2002:ae9:ec11:: with SMTP id h17mr8014666qkg.485.1571837015184;
        Wed, 23 Oct 2019 06:23:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:1489:: with SMTP id w9ls737286qkj.12.gmail; Wed, 23
 Oct 2019 06:23:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwxa1XKOkhLqJJZw3oMdTzM1tXO7OwpukAAF/epafWjI4+aXNW9G0mJtnszzJrCgJHU9M+/
X-Received: by 2002:a05:620a:12f1:: with SMTP id f17mr8304322qkl.152.1571837014025;
        Wed, 23 Oct 2019 06:23:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571837014; cv=none;
        d=google.com; s=arc-20160816;
        b=0LSqzr9sCA4d9QVd9/ULAfbZy8NKObkrxLMryxJuDqxoe73zSNMhzmNsgkImz5m5KW
         rO7y1m6GT176ZZ1QN4aOVCL598bINmkZ6t+qNLPTaMtSbPWSczmJrM0IrEjjW05GDYP1
         tsuk9HsWrUVtM32dyJgjgmaqUeq0D+rDjGmIS+Jl8iEBGHcDrSHrSh+YMUq8UXC7A0sV
         PdsJ4OGgdht3gNc9+4Ov1K/2xEVvLsuEoX0kyDeIzMdosanzqlTAltCnnirUZTSQByrI
         Ch5TURqT9zE/QvPzg8epubyJXx4duEjQ3+IkSXI0loOrtADusnTGKe90fBUvSZM7TLTw
         UChw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DVtCwo+0HPxIIgnopgz0SHKnq1UGQac+kDvDujYQGOQ=;
        b=D2/on2aWfHRLHw7RBFEjSZFILUJKqjimrhNUDVNkDh9XdKOCQ4PO4w0i0Op90PPdVX
         DCMI6+I0Swnmqc7OZNvIqs6Kn1lTSO7UyZ+m6VXpMDFGNuE4NCXHT8pUouPRKRB7KA6Q
         H27TvCChdg9/T3iH41hv5cvmvcloVXMHPFP49sHoe5Q5ACJDZtwirLkqw+hiRFQbCmZg
         IHkQ41R3/YWgyDSbzqzeTwKwejY8ZFUxMHifS90J8noxmh8DsssN2PqEGKQDDhjvJe6B
         Z9CMNrAZXeTA8ka0lUY90HH8ogw40nQND8oXuFFxjvA3yzrKLTy6IsnPyb72GyLatyzW
         8Q7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A9/M6Akl";
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id r28si666567qtu.0.2019.10.23.06.23.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 06:23:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A9/M6Akl";
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id 4so19704692qki.6
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 06:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DVtCwo+0HPxIIgnopgz0SHKnq1UGQac+kDvDujYQGOQ=;
        b=A9/M6Akl4vNNujO6MIkCxgbB6wUrDyTLS6Cy9vyUQLsIiFyHyVCl9HooQiXPcL2ZYk
         TQHYiu44yql9tt+0iDXIadSVSeJ7EwYOux09mVIS5s6LzM13Ie4f1uGMw/UrJPs1OaLM
         qAITowuFT/0rQFM1P5d4mljoaSCSjLCTqs7+DcawPCA9yd7j9eCFYx12+oulMs51TQyI
         I2iC3Iisi5AV12R/Z3NOp2/UsWhmaytde1HNm4OWkzAdzISTz9oNCtGE/i9WowAnoTPt
         JsJwbmu0s7erZfV+XdkyOLQIGyqgJ4B+9ry7hl0AEE3io6YkLZId/caImJDW8cgXyjcs
         ZFFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DVtCwo+0HPxIIgnopgz0SHKnq1UGQac+kDvDujYQGOQ=;
        b=NsfxVwedHTHDfGcC+9Oy1wmaJ1MUovkzlFvXlPwOtR1JcPuzWKVcVSSQlhkoC7AuCj
         ycqR7FZokvtQAh/fZx27KJ7N/ObF72T/3C7cdpdrxHT+XfF8RYx8+4wSCakVQLR8rRrA
         4jvAxHUyOLpasCmOMZUw+7HA/Jsoa3A15rzty5KbqL4AlExHhNHgUZW4LDxPcJ8VCaes
         YdwFxWLP7MV5kPrS6453WRiE2wnwQA2JGsvkd6YzGw3r+OqOewXN/Arv4eNR9qzhLdRo
         MIAsbllXmV6fQaYF97kBCIM7AzI6RjjeTtGnFV3ditiWzzBLy3SznZNmvN08RwI/74tZ
         2gig==
X-Gm-Message-State: APjAAAW82KRhBkZMT5ysU+iz6WSVWMTSLYmp7lfjFJjsSav9bKOQFlCj
	6cSQax+0x2AU7Dgfo6OD5PZLWzxlm5nkCg==
X-Received: by 2002:a37:a40e:: with SMTP id n14mr8358677qke.275.1571837013561;
        Wed, 23 Oct 2019 06:23:33 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id l4sm9512473qtq.48.2019.10.23.06.23.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 06:23:33 -0700 (PDT)
Date: Wed, 23 Oct 2019 11:23:29 -0200
From: CristianeNaves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: r8712: Remove lines before a close brace
Message-ID: <db01b7a09ad9ce47cb5f3a1c69f79deee82e1444.1571834718.git.cristianenavescardoso09@gmail.com>
References: <cover.1571834718.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1571834718.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix Blank lines aren't necessary before a close brace '}'. Issue found
by checkpatch.

Signed-off-by: CristianeNaves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 12a3c64..09b461c 100644
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


