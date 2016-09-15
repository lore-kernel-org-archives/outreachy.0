X-GM-THRID: 6330639307056873472
X-Received: by 10.66.83.100 with SMTP id p4mr7838829pay.26.1473966941845;
        Thu, 15 Sep 2016 12:15:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.70 with SMTP id m67ls1359042iod.41.gmail; Thu, 15 Sep
 2016 12:15:41 -0700 (PDT)
X-Received: by 10.67.12.205 with SMTP id es13mr7543487pad.45.1473966941275;
        Thu, 15 Sep 2016 12:15:41 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id z4si1504055pam.0.2016.09.15.12.15.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:15:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so2459671pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=drt1n5iTIqZL91TeVBNIhtwXDD1VdKLCHNPnmeuHbnA=;
        b=fLw50JLbybd6izOVtKhpUmhpV3i2IqmVA0aA7nahCrlQpA7LogGVuZI6qk6GmdCGOx
         N9szJx7CLmq4xkBJnQ3yEegA5tuBdzCvY8w5dPaq8P+urR8dGAltQKgEJIV/ORx+8cqf
         ygg7b9RxE4DXwJR1zwIfGsw5zPhAdLDBlyRJNiAnCcCyD2nm+jrQHoKuDsVRYpFgmBRy
         gZoin/ubtXvL0vJU7QU8RpUzj9iq1MSGem6ABUyd6ZLKkDxHVbrn+/O+g+fiTNqqyu9+
         2WQ3yuY6iprj6XOn6yioF0CMjYuUSFq1x3gPzff0WrNqQjgkX7XSkrsiL5Hj2hOtt6a+
         PR6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=drt1n5iTIqZL91TeVBNIhtwXDD1VdKLCHNPnmeuHbnA=;
        b=FXitHXKrg8jfUeouRNbFic315Aty18yvfNRp8+bfOSsxaaUWBHes+oCo34EMqPS8bE
         +kjRVdVg0KSo81dJKO8/zSciF5Criq/e6v02MBn5MjmLefCqJHshPorbn9yX+gKS/Mr9
         JZcHewkILwGBe8L8kwAyxwSVckHiP7jtrM8pvxbi0tk/bND6jGzZTrnqbCVuLdhqf2uO
         Jn5IFWorw6dEphu2CYEhFUXropPktb+9l3+tMjZhRMAB9gOC9ExnkUBkQ6mHnA86R6q2
         tWrsiHrd8PaU92EtPi/yQbe9Fm3Qe2y3WjaoW+aCAX2UI/liedo5AtjZEya6Q3U7qagN
         hP+w==
X-Gm-Message-State: AE9vXwO6ad/9dd65zBBKhz0vfD7IkmeKjwxh93FZ92+y7EmwkMGd10nLc0BNwGHQjY7V+Q==
X-Received: by 10.67.7.70 with SMTP id da6mr16995609pad.111.1473966940902;
        Thu, 15 Sep 2016 12:15:40 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t16sm19762336pfj.76.2016.09.15.12.15.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:15:40 -0700 (PDT)
Date: Fri, 16 Sep 2016 00:45:32 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lior Dotan <liodot@gmail.com>,
	Christopher Harrer <charrer@alacritech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/5] staging: slicoss: Remove unnecessary braces {}
Message-ID: <bde8d1850b22cbffa26dc38b666cbef79c350e98.1473966683.git.aquannie@gmail.com>
References: <cover.1473966683.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473966683.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes unnecessary braces {} on both arms of an if-else block as they
have a single statement each. Issue detected by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 8182e58..6b1c92e 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -1631,11 +1631,10 @@ static u32 slic_rcvqueue_reinsert(struct adapter *adapter, struct sk_buff *skb)
 		dev_err(dev, "         rcvq->tail[%p]\n", rcvq->tail);
 		dev_err(dev, "         rcvq->count[%x]\n", rcvq->count);
 	}
-	if (paddrh == 0) {
+	if (paddrh == 0)
 		slic_write32(adapter, SLIC_REG_HBAR, (u32)paddrl);
-	} else {
+	else
 		slic_write64(adapter, SLIC_REG_HBAR64, paddrl, paddrh);
-	}
 	if (rcvq->head)
 		rcvq->tail->next = skb;
 	else
-- 
2.7.4


