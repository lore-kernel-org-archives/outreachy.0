X-GM-THRID: 6751912583325810688
X-Received: by 2002:a17:902:243:: with SMTP id 61mr19210147plc.66.1572275875861;
        Mon, 28 Oct 2019 08:17:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9725:: with SMTP id k5ls3126690pfg.15.gmail; Mon, 28 Oct
 2019 08:17:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxy2OyQdI1b7p/pcoOFvbEBZE/flULVemwTAFLZoZ0GvqV+UpylcyrYyC7aeMN52qOHgcdA
X-Received: by 2002:a62:ed01:: with SMTP id u1mr21356711pfh.122.1572275874814;
        Mon, 28 Oct 2019 08:17:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572275874; cv=none;
        d=google.com; s=arc-20160816;
        b=hsgp4tWGQQf8td2WGLUltd4slziGjAmCc21al5v4/1g9VmJ5h0YZSdwngBLuYB7rTc
         w7MbAOmekKVd4Xfd05PQCfOk9HXDU4mEMwWdpvxfHDUZHCshWYhKyzm1rVGB9JsxTDI4
         cYqQAvzIljEyqiX6hM/dvsEQsDc+bUBr9vYjXJqtgHAWD0HJYXkfA7uZlzruht5hImWh
         I1p3pHYKoioJNSUxjdAtbhOrmYvNP0H6lmxEq7vXpd5TFOlBxdgHofa35HYLe+l9sGz5
         dl53atMeTlbNB5vTQeLt5XKj8BFusv7Wh6ofLPtt+B+w7IHBLwbYWxJu9HepC+aqMMxx
         zJrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KjRmkuQ5Rd7UqVsdzxjQjRVAZKTs3MyGlH/p0of+zKk=;
        b=UpRyO3d3U8jmVj4bZbGItKzHVIJcivSp2fLmt1QzJlrFSOltHiNNLYiLB0izoDRWxv
         S9UNO76K32zyC3cztRY4GYNtJ3dg+6LMXDIcjpDHds7f9EsubMOLM536kA8fNEhAznju
         qNHVwB/ya3K4u/0tr0lzFJ1eLPDNEapSaSOKzVGh1XP8Y/wj7gm9GwwlKJThWXXTWpUG
         wnTFwACMEj+5b4Bus93q5FKxB7yHPzMMk09ex6E5jqH23pczq6CC4lMWp3cpllnODZZ8
         svU5RMFr5oA4o0bp1sSKloWLtXVJ30Ck+2t0q51eST3kxl1+Z/YLKeRkK85q09EcxbpI
         4iGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m+2v4TtZ;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id be9si3736plb.3.2019.10.28.08.17.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:17:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m+2v4TtZ;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id 15so8795586qkh.6
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 08:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KjRmkuQ5Rd7UqVsdzxjQjRVAZKTs3MyGlH/p0of+zKk=;
        b=m+2v4TtZB3PS8FHefv4LsC4OS2nCvR/f7LU9VXFQKgdj24LFjjmQMv48mLUGoj/tRY
         we9qTd2RqU1EsBFXUeqeYkeBlMamG88e5PpCahItKyJsm0sAAhBT+9dZLg3d4Ua5eTxR
         zlmjlcYfD+WwjXoNd7BY2LDZBx4g8WG5Gx7GQCIQfDkV8BSi9hExbz4tp3kAK7mthViC
         x8RlS+msMI/46a14dA9F3NF4IkKNwtSnPc9N1FaWMsJNsZyRMkGWLkFnPeydlIlSziKS
         KJyCBI0R/EamztDeHfcMzXohtr2gtr0QxBm8SU7E8j8mLPEI2Q1sRolyywscPgdhMxP7
         R6Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KjRmkuQ5Rd7UqVsdzxjQjRVAZKTs3MyGlH/p0of+zKk=;
        b=lGPOuHxjigkZqmczpzPbpPUcDDpU5rK9Ap4dXrv8/kCZdxjEp/T97EGaoX7zbiUvVu
         9l/Zr2W/GKYUXGC/ymgqiUFQpOFJJEc9b2iZd7ksBwoFWbEcGc15hwT/3jKfliWuZ70M
         YJ0a7+KREEn4gfHJdcSNHtGnMVpxfNEZpoSLK8VvwpND+hIwjhRLrPLsm20uK5zPi6qA
         xP6yiteLFnUQDOg8mdBPyk49xAn+I3/mIlT9uJD9QpHaqKoBOy5Xzf9NDPQvQFfZAC8X
         LZ8r82dKRlDZjwNZVd3GU88aPISZ5PcLz/NmFLmqOkGazjLmDBKr1GBtinJXbtoTPtwf
         vL/g==
X-Gm-Message-State: APjAAAV5HYWSAw87fC7UISzW4YcDIizWOJQd5jptaJqTsEeZJl06WC2z
	zmJDVtR39TbatOzY4J8KC88DkUTbE7ye6g==
X-Received: by 2002:a37:648d:: with SMTP id y135mr13161260qkb.65.1572275874107;
        Mon, 28 Oct 2019 08:17:54 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id o3sm3582797qkf.97.2019.10.28.08.17.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:17:53 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:17:49 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] staging: rtl8712: Remove lines before a close brace
Message-ID: <b7eb43f61d3856ad3a3fce6fcf4caad6eebffe79.1572273794.git.cristianenavescardoso09@gmail.com>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix Blank lines aren't necessary before a close brace '}'. Issue found
by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 304d031..1e3e49f 100644
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


