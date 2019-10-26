X-GM-THRID: 6751912583325810688
X-Received: by 2002:ad4:51cc:: with SMTP id p12mr6241838qvq.243.1572052210638;
        Fri, 25 Oct 2019 18:10:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:ba47:: with SMTP id k68ls3896827qkf.11.gmail; Fri, 25
 Oct 2019 18:10:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyI54BHbK01q9xAgYfrpHyiYL6iq94xHKTB2jOVllGa33Guw8o3sp3phGIOtHSh9RkcPRIj
X-Received: by 2002:ae9:c30f:: with SMTP id n15mr6092166qkg.202.1572052209535;
        Fri, 25 Oct 2019 18:10:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572052209; cv=none;
        d=google.com; s=arc-20160816;
        b=KjgPoS+0P7xKB7LbWG2pqzgenK5NPVJ/KnGlpmwwSUv3VbjC319uz26SMfMh150tAT
         tGoaaCspOKEQXl+g6Sm76A4RWF+c7K8EZBX8R38nxoWZyucJDUiy6YuzK6o9YR0x95Cw
         Z4HNLFw1iHflqnLSBXz/wXSs4QTCBhlBX+KJClxdn2wVVodEwrnMpvP7vwK5d0UCGiId
         xcHuFYXyLsS2RTNq5i05LOSQ2VgOwk4STBsSFLlV8JI182gBArwy84IKYicZHlmLP+vi
         osDtBCQ94mQ8jX2es/UOpobbjs5+llFaeQqzJ7HVCB4Y/4dqe6eXNkM/YoJFLBRbTlOm
         QjRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dp9VEiEAucRbcNWDDMXkM2Mcfldcw5lUeaorfPQjnfs=;
        b=juk4uWI1E8Y+oTT5egBVkoe/gEzwniR3ECA3CRGj9UBEllo2LEcsvmElQsxKAvdnZY
         GXoaXZ6asXQrKyPSOwjtHgxQxZwTKrOYtstHoMIPmY88FLIeIAS+B4sleyKKRV0rGmUm
         /MUpYLrFHy7QskA6YqrF0F5p+9ap/Zllk9fiqghCvat+MxdqpZZs5U2zMhV7/0t2q30h
         Fhncn49/nWfpbJFIJUPxll3qJ2lisDeZ/GYeY2UjPAWE32Ug9P2cp6ym+mkEUB/bD2+H
         g+VcsbgPhXeNWFkH5zVuvtBrNb8QDF6oFL1/qjHWegcfgQEem3ZH0KMQ6GTGYmelGwQy
         hbCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MREXsrE5;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id z90si135296qtc.3.2019.10.25.18.10.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 18:10:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MREXsrE5;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id g50so6079375qtb.4
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 18:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dp9VEiEAucRbcNWDDMXkM2Mcfldcw5lUeaorfPQjnfs=;
        b=MREXsrE5nPyO+vke/p/zBd8AFyJGLo7wOjrZCig9R0YwNNXfFGAqyJOO2ywvg00lK8
         lTd+M8efshpro1SFyqYKBRmXNP/GpStpF6jLUwP4pBRH1J6Qgs4iNGtK8RuW0o7kRvc6
         PGC3IXXisYHQJ4AYk829Q9E1nXxneatjFakmejD+L6qO2Z7ZOJCWcTKexZZp84SAJJyW
         FLTC0loQ0phF+UG2Ec+tU03RV2ODcnmY9FBLtsCNjcJlRpopl7Byi67BVGsm8RxKaMku
         tiBSNrLLgHxg8QgBDVZJ70PCBbP4xWu6cC4+R9hLP3CDgc8acoGagOrI3vjhHTavk6hs
         Pw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dp9VEiEAucRbcNWDDMXkM2Mcfldcw5lUeaorfPQjnfs=;
        b=RMxZ0nd5w/TTXsPjNQ8RM6oNlfoLowWyFdpWoFR5zgvrOQpljJNvJRpQ2ITnPm+kqP
         xaF9lz7kGb8/DNuZdl1swDAA8Uub3HuLU7ueRbapAQMYU/8q4rz8XCxQBbLyvS9oLBKw
         6RbHBMN6jwDTODIqTJBqoQtSuzMwVPmJdNIL0nOQS51lr3gSaTmCF+m/f7rIk2DP7v3j
         w3+bfy/SaREuecnVKbs2ZI9xmcj7EbRELuqBZAzlWEcExuDtGvw/nYXbkuaAoIwBmtp/
         +ztHskwoj0AgTMvw3TTU+w4opDrxaSis0HbP4ONg4y8j3RLiHJ2mYz/XxRPK9U4QZjxw
         Ga1w==
X-Gm-Message-State: APjAAAX32OhlP1wEokSxEEtJH63C8YMzpplNmjHJ9SEfxTHn6wHu5OkV
	6WFUhKMVJt7GLA/ScC9kupeIQst3o2t5zQ==
X-Received: by 2002:aed:3908:: with SMTP id l8mr6240757qte.383.1572052209133;
        Fri, 25 Oct 2019 18:10:09 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id g10sm2113853qki.41.2019.10.25.18.10.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 18:10:08 -0700 (PDT)
Date: Fri, 25 Oct 2019 22:10:04 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH 2/2] staging: rtl8712: Remove lines before a close
 brace
Message-ID: <0bd6b897a5af322cf54d53bb68752d3667a7acb6.1572051351.git.cristianenavescardoso09@gmail.com>
References: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix Blank lines aren't necessary before a close brace '}'. Issue found
by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
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


