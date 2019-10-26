X-GM-THRID: 6751912583325810688
X-Received: by 2002:a63:d0d:: with SMTP id c13mr12410049pgl.138.1572121893108;
        Sat, 26 Oct 2019 13:31:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b304:: with SMTP id i4ls3842880pgf.9.gmail; Sat, 26 Oct
 2019 13:31:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzQlJyAHzndQ/RJ0scvIQddubQCNvmIWI0OeL/x+Zl9AgQI9KwIIqpiMEth0SdTDVhLVZvj
X-Received: by 2002:a63:d246:: with SMTP id t6mr12391704pgi.5.1572121892164;
        Sat, 26 Oct 2019 13:31:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572121892; cv=none;
        d=google.com; s=arc-20160816;
        b=qoc1XynTknMlwQX5dBVcMikoevQ6HEthosihvEXQxpeoXQ3h83ZBBCXdRchXx1tJv9
         EfZqlv4cP4f0W0OZLxDfttCmaZnelYTnimAHpx7eV0J+TDJLgesYXwf0Px+7yg3y/6vH
         iKVj2mzfKtrjgip5z5gJK8gFPJUhpfftWKCcZ8EMEfw7HKsqbZEhzF4ksbDOtIy4UvRI
         c+JWicwQNvBDcoj/sJVacE7H5K6cUk+DUf348WAduG/kH8mwnSFZf4fm0EMvAoW3c4RX
         BeExgMljhZo8zM48u3JCdQMb6ixWGfrCLUUjNXZ5iUgeTWZduOok8fyOnMsFu7k+I/et
         6ffQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tbkGc2uRqrthDU52A0rFG/A+QNzAVuHvzOb7BZHUvFs=;
        b=YOF8X8N44rHybeiFtK2qJz7g3tWPSMvUE5PjSnLPRobboKOPbZsyngr6H1XEMUZSV1
         8HxMXAhtTxUnic5fP+LwkRWVWy86HTkpyJNfZpFcAmTwkTU++Zo6oIFc3Gc1D38N7fBh
         tdXQAXg1Qh/nqKt2FyNUdAULCfUtHXkRoja4u/lTIjnWXJAlnIRUqA6xDK1+xyhPg1Wz
         W6d5IA3cjudI1XPypQNpWeEOzG3PBzkEHgIeLCXWc0KaibRKOJVuqTc2ujstL0zLyPAM
         C+R1+uYGH2gu+++pXAMVWfsUjjMHOWcR0xgeUJ2rN8ZoeIeWVnvI/ePidf+Pif+Nd3GG
         o/9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FPEceSXX;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id u13si390773pgf.4.2019.10.26.13.31.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 13:31:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FPEceSXX;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id o25so8676908qtr.5
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 13:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tbkGc2uRqrthDU52A0rFG/A+QNzAVuHvzOb7BZHUvFs=;
        b=FPEceSXX6wgU/NanFgTWiGokgDNZA26a5uaDlEegOo9p6WdNYTbE7qRfAr7Cs0uCzy
         odeeOOiu2sm+g/A1k0BHkjyBp8CU3YORbKZZoWBw4R4eVKbpKs6slO5gm0cfOdSODB8S
         e/4EuH5jaV1TVyLY50H4lZPKxEndESM1XYpE33S/6jQa/lZh9iuKexzOZvM3hsgl7mWu
         kx1NRaq7oUsIK1BRE1zKARyZ7h3KfDcsRLiQ8OlzJmgDvX4EEm0eYWx/RquhSZcgv060
         up5PwLMxdkIDa4/R7xr+BEoKT+N0dGL7VJBnBMx528WuSVfDiwg96Xf5bEEaFAduK+U7
         By0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tbkGc2uRqrthDU52A0rFG/A+QNzAVuHvzOb7BZHUvFs=;
        b=Qmy+5PBYd3T2fTzlpj5rN/suFeahDCbC1aPAuvtn7Y5RCG86mJbaWf/6ApUQtncT+M
         n+ks3tlHfqjggATTP9wsvoYMzfaiCe40AcxYCqVBekmh6ptILj7Qd2s259RBjuhiJG9v
         0MQrdbopsqCw8NjhIZs3Pni+UJSwhSh7m6K6oaY8LhiBws7pZkbH1tAO50z2f8E5i8k1
         XCGUw44JnT+YZTG9F76fFseXreyeRg3oUpmFrrAdkds3p8U35t1hOv430LZ1JNNfrSIj
         AV2Ye6l46mvGg8WDD+339DZn17R/oTmTQvsNNzkWHbf97qw9X6JyQzY84+dcOZpE/sUO
         auYQ==
X-Gm-Message-State: APjAAAUZmoQ5tP6A0UwzZy7BB2x10BcyPjImnQFkvT0TSZQ75ezIqNLd
	y0j3oaepn483Dxt21s1bBKCvPmIc7FwrfQ==
X-Received: by 2002:aed:3ee4:: with SMTP id o33mr10073460qtf.267.1572121891187;
        Sat, 26 Oct 2019 13:31:31 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id z8sm2939529qkf.37.2019.10.26.13.31.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 13:31:30 -0700 (PDT)
Date: Sat, 26 Oct 2019 17:31:26 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] staging: rtl8712: Remove lines before a close brace
Message-ID: <8c74dcd9afaa528a80804081f582792045bb7a7a.1572121059.git.cristianenavescardoso09@gmail.com>
References: <cover.1572121059.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572121059.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix Blank lines aren't necessary before a close brace '}'. Issue found
by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index c567a16..b7d0ea0 100644
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


