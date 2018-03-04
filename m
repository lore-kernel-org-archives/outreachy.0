X-GM-THRID: 6529011739100446720
X-Received: by 10.55.225.5 with SMTP id c5mr7844364qkm.5.1520154005802;
        Sun, 04 Mar 2018 01:00:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.6.133 with SMTP id 127ls8163711qkg.2.gmail; Sun, 04 Mar
 2018 01:00:04 -0800 (PST)
X-Google-Smtp-Source: AG47ELs2lURPCAqivvqv5Zk1FscKo8AjANzNcDOkIsT6sCp+eamsKlD3nn366AXf401gLhhXFACa
X-Received: by 10.55.26.217 with SMTP id l86mr8073261qkh.13.1520154004294;
        Sun, 04 Mar 2018 01:00:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520154004; cv=none;
        d=google.com; s=arc-20160816;
        b=CoooMMBvba5aBMbONivW0PAkPoQXiqgJ0LhrWMVSL9DEQJ+nyFsaCul0+aLGeOHYpV
         kDpxxVUFhCEul1yr4xEArg9fI71/pbA3ahy+MuL5+ot+RdO0CarJE2A+ohiItBpkf+gv
         7Jgw9dckkoDqAPTESneOfjFnF3DVTfb3n2IRX3uLDi1YEhsrJBLoZgtBY40Evrbj48Tf
         +oMRJ98mLyGbVBOL66mtIeUiS4U9MuTTIJVcC/Mwy+IlZmJk4htpY3v8GQapy31KqOhR
         YACLFqGktypSMtjsEcCSvvSoE5Q2r4LxSIqOL/dh8cAeMWJ4333P4CvUTWcDPi0A0+31
         7ITQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=iZGMQGJMI4K8pBXMRQ1SLAQTxOoUy51EfNq2Eu6RNCk=;
        b=JyLiDSZtbiczWAsFHDTDySum9HvuXOi5Kdwyl3dvFOwKWtF7OyEAVFhGF2zwxVaUnc
         qWlBeSIBdjRmosQntRTeacV3M6c4eFLc14fYxqKq31zAZ8FXbNTaebIRv/mFGXUS8HDL
         Nv+c7YTVnNOBDFPo+k6gIjhxdiQUm+mz1hNfQbxsYTEG4PAmDaQVxCy+Eo3sulO7ZQOP
         abLJZCuqAXH9igFJgWfUjyHirSWuFq96QTLsJfw3NmWqiaAUpmSGORcp/mCc/ZZKmQA8
         AYNb4VC1HJruZvWRIcZ9U7yKMjqnf1BXATIKviLkNqXT5q8dnMzUhbJK84EsPuPwUEVC
         kM8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UcsyAB6w;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id o5si754271qke.2.2018.03.04.01.00.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 01:00:04 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UcsyAB6w;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x243.google.com with SMTP id m22-v6so4527759pls.5
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 01:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iZGMQGJMI4K8pBXMRQ1SLAQTxOoUy51EfNq2Eu6RNCk=;
        b=UcsyAB6wbBlTFKXMR8yVTov459oRdJqLBvZ/A0fYxwb0317hMWanzGLLMHUoLHLA/8
         yaKZA9f+Qa8FtZe7HfXMhXJRBhUscjfiaxJKHj4/mWwfMKkfe7JxbVnBpX+g4nJuxzqk
         bTnu7tE4d3Gs9nIeyOjqZbs6cTQEAENLjj6wvUGoXIZkc5S7HYIT6UHmiz5nml6EDrIB
         Nm+4MlH+ap+1twZ0UMZWEdHy0WBBUQF0n/g1sff4OwgDOOh7JZYI24IvONx36s8siksA
         J55N8f66scyaLKqoCaXanBPyqkJY120o5p3fVe+5Eogql/6zuPSmQvzHAqBF6lsMwoZj
         Prdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iZGMQGJMI4K8pBXMRQ1SLAQTxOoUy51EfNq2Eu6RNCk=;
        b=dIun2ndMLj91eyZI89LJ5MddwsdntAcnhGEGvHTFR0mp6TnZAKsmwvJbk2pfUxjxRe
         yD8LS4kl154bxQdcF3NDDYgbQQr+Sb2P3nlypXE3LiMIgpzETQTr1AXNkV6KwnNPgbue
         BdjOLGY28o3gEUsnDPwpIhU9EgWE7nn1gnmC3dq9SIZ7ItGBJ5DooJD5qXXhcSVQZpo0
         c4ar331oMRlbq/T1y5pvyZ4SCEi9IqkWLhjEylhKzevo2metj/zEqFxSH4kS4gIlI7xS
         gyCOXaIOuzxb7ydszetTVZKicvjwbTwN6fPPLD8A7m0avyQuhjbHAlQzxMDQVpKOzre9
         4uSw==
X-Gm-Message-State: APf1xPAZBzkgMDrTmOSzro5fFBO2CYClk7xVjtMnbHDT9pVXnBvLK8CF
	GF/N7bqWe7A2/gvShgBvdC0xcA==
X-Received: by 2002:a17:902:5322:: with SMTP id b31-v6mr9603454pli.61.1520154002753;
        Sun, 04 Mar 2018 01:00:02 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b5sm15721956pgc.13.2018.03.04.01.00.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 01:00:01 -0800 (PST)
Date: Sun, 4 Mar 2018 14:29:35 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: netdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ipx: Replace printk() with appropriate pr_*() macro
Message-ID: <20180304085935.GA20591@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Using pr_<loglevel>() is more concise than printk(KERN_<LOGLEVEL>).
Replace printks having a log level with the appropriate pr_*() macros.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/ipx/af_ipx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ipx/af_ipx.c b/drivers/staging/ipx/af_ipx.c
index d21a9d1..27f4461 100644
--- a/drivers/staging/ipx/af_ipx.c
+++ b/drivers/staging/ipx/af_ipx.c
@@ -744,7 +744,7 @@ static void ipxitf_discover_netnum(struct ipx_interface *intrfc,
 			intrfc->if_netnum = cb->ipx_source_net;
 			ipxitf_add_local_route(intrfc);
 		} else {
-			printk(KERN_WARNING "IPX: Network number collision "
+			pr_warn("IPX: Network number collision "
 				"%lx\n        %s %s and %s %s\n",
 				(unsigned long) ntohl(cb->ipx_source_net),
 				ipx_device_name(i),
-- 
2.7.4


