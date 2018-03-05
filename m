X-GM-THRID: 6529310178951561216
X-Received: by 10.101.68.129 with SMTP id l1mr2770310pgq.80.1520223491324;
        Sun, 04 Mar 2018 20:18:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.4.206 with SMTP id 197ls3016266pge.30.gmail; Sun, 04 Mar
 2018 20:18:09 -0800 (PST)
X-Google-Smtp-Source: AG47ELscKFLrXwx4nLCPHd8Id1VMMXA5oBJYfVs9OYZld0bbA7RUbA42EgbeqWg4eJmpqjoDdi09
X-Received: by 10.101.74.203 with SMTP id c11mr2713826pgu.112.1520223489898;
        Sun, 04 Mar 2018 20:18:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520223489; cv=none;
        d=google.com; s=arc-20160816;
        b=rsZWnb9a3HuE9qxcc1ENDC41+X5D+4Ju2J+YQE2/Yg9FFddTDAOybH31/z0XlURg2r
         8JZ+0rsUNBry0g1EwLRkP8a0q3FE1KJpqPWeKXYDsYOguOuw4K7H7CfbYGeu+5yDUKxJ
         b5ZnY6OraYiU80l4Qv4xaPwF4XKMu7cilZx46to8P8MuvB/27mRLJFbaRvZHE79te6vs
         OARLhFASEIHk+p+QwukjMlOMFgP+Re30epTpClFaySC1vUXw55kEid8wAuhWw/MphpDE
         1BcdkqnWVCA3MdFl6OpO+UdPfau3Hl1nfpp49KSS1PeZR6KkGh2vEt17tyhhgindXMlL
         V4HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=Aw9kQGcEEQqxPhWQb4w4sS37awJPXn5gOzgN1c9f3KE=;
        b=XVlr54aSYG13aigkLWe4iw8EpjBQJB0yt4YhBWsAX45iDcMQbdXtJIxk9bwlg8UCAM
         zL1cO87F4N3X6LnmZpTuDkF+7t9g/UD1lQu0OCnC5cgnP6VOj7r8FeZEDKz5/jq1iRqN
         7+lIvS8ra0bcqGN2nvRGB+XEBx2nQxB4/2kGt+2c+0ih+4LQDsclDJz1W3Vzpi6XSdq9
         a6YV2wKHZixr+JB2ZGlkrn+5Z8HY55SZmS//iSZq7gcuMGsz1O9egfS+ZHeWI0dz/Tuo
         tYQny8DqdrCKrTUJ4TmItGIDk8PDTceaYBWjFvNOss5+MO1z6Eo2TcBABYauzEkJkdsG
         DlAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dYsIY1t1;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id f26si490993pfh.2.2018.03.04.20.18.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 20:18:09 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dYsIY1t1;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id m19so6360308pgn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 20:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Aw9kQGcEEQqxPhWQb4w4sS37awJPXn5gOzgN1c9f3KE=;
        b=dYsIY1t1075ymebnyP4cBjN3DofBkH1Tjo/ECr6iaTVgvJgb796+Rzatz3E6+URc4B
         mVUNK6rV0Hbzli4daNAuBNfNFRd3d1wP5kLa8RdvbtU+tX0MoSUB8e5ZWLd5DkGU6jKw
         4mmVdJ4P3+zOgzeo2l3zen0in7K8U1OBM8M/iFn8HDCEbhDVTHOOqKRQ/Zuw2TRIFQpy
         X23ICLhOCuLwajbYW1KtCSLTjnYwH3rDQjg8j9UGVWEkSRghCb4m2uG2UcKKwTuAobgZ
         2cS1VhBHng59l+AIGQFuUS1ssg7rMlkTOVLvMuJ8lSr234ibm7WMgJVumOxa3WBcd9bC
         jz+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Aw9kQGcEEQqxPhWQb4w4sS37awJPXn5gOzgN1c9f3KE=;
        b=pX5/078J1K3wc6jKWobJA5UdPnMWmC7TJn4quoZDfxeMnzjZ/aUYkLMGPOcQuH0MqZ
         LyVf6IV/1uwtwj8CWqGp5MkDpGHp934ZfY9Q0PUanQxHBU9D+PSz4tAkRvhI8Qtl65Rc
         /+pr/JACVT0M1LOIg/bvr2LWUJBdC9yC+XlVg85IY1kvR2z0L6igzxc1ykALuPnRJQhl
         UA260pw2XJS9h3qVIgcYgFU4ktkLbYy86A0u3+ed6SagwhBYeIrgOuAc+8Nxbtz1xhwH
         T/FtgqxYivN3hxoXECy2YMyEQNndFdcBatpZSaOgF+iD24blAE3vY8xKtbntT85KZ1p6
         F3tQ==
X-Gm-Message-State: APf1xPAQI+gUOnmWfRDp5aGpWs1lNFUyJz+SYjeahZNZ4MrpKeOIaioj
	53hSficsD5De7241d/yYOX7BKQ==
X-Received: by 10.98.18.70 with SMTP id a67mr13966437pfj.213.1520223488764;
        Sun, 04 Mar 2018 20:18:08 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x13sm13899176pfh.115.2018.03.04.20.18.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 20:18:07 -0800 (PST)
Date: Mon, 5 Mar 2018 09:47:40 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: netdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: ipx: Replace printk() with appropriate
 net_*macro_ratelimited()
Message-ID: <20180305041740.GA23378@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace printk having a log level with the appropriate
net_*macro_ratelimited.
It's better to use actual device name as a prefix in error messages.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
*In v1 printk was changed to pr_*macro(), which is used
in kernel instead of calling printk() directly. And for drivers,
dev_*macro() or net_*macro_ratelimited() should be used for calling
printk() directly.

changes in v3
*Indentation is not changed, as line is exceeding 80 characters limit.

 drivers/staging/ipx/af_ipx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ipx/af_ipx.c b/drivers/staging/ipx/af_ipx.c
index d21a9d1..5ec6591 100644
--- a/drivers/staging/ipx/af_ipx.c
+++ b/drivers/staging/ipx/af_ipx.c
@@ -744,7 +744,7 @@ static void ipxitf_discover_netnum(struct ipx_interface *intrfc,
 			intrfc->if_netnum = cb->ipx_source_net;
 			ipxitf_add_local_route(intrfc);
 		} else {
-			printk(KERN_WARNING "IPX: Network number collision "
+			net_warn_ratelimited("IPX: Network number collision "
 				"%lx\n        %s %s and %s %s\n",
 				(unsigned long) ntohl(cb->ipx_source_net),
 				ipx_device_name(i),
-- 
2.7.4


