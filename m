X-GM-THRID: 6462776611954491392
X-Received: by 10.129.165.19 with SMTP id c19mr341452ywh.225.1504733582830;
        Wed, 06 Sep 2017 14:33:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.146.214 with SMTP id u205ls109082iod.10.gmail; Wed, 06 Sep
 2017 14:33:02 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4pImt3UJo3Jcz1EXXMeoXRYxnHpJqw4OwY+3mcVfhiugON5MAhNCodye3zfOJFcFysKzeH
X-Received: by 10.99.114.19 with SMTP id n19mr412233pgc.38.1504733582072;
        Wed, 06 Sep 2017 14:33:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504733582; cv=none;
        d=google.com; s=arc-20160816;
        b=zLq4PkkbY7TOB7Dko1PjFi2p/AGDj0pKNVPzOJpmkANsJ8zQZ9R4YSEbP1/RT77Utw
         zrds59S2qMQ15oXtnWBG8GgFrtO1z/Ik45a8AZlMULBu5dXk5/V6+u8B90aRg64lQcw5
         7yKUP19tqlfuvjA1wOOIL1O6mN5zEaKAShyKawTg8dxHSpmmcDwbV/Ceb3fJ1SY7rPrh
         6XykpoudmdJzulr93CB9P17PdVkI1SeEMQc8NZgcszlgoKLsWxNQQyVEiDq3T4QkzVt8
         /KLA6YQlU51Yx7okO0FQfPPbnkamRNo5b78JzgqDLTjAL9wn+gVCgZynJBv/Qct69j1L
         GudA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:arc-authentication-results;
        bh=Rnkymjoi0haiHWlcEBkwEs0Hv+13yBNBUGGO4OAnN70=;
        b=Ty6ytEgASied2MvSJ6PgAx/N100ZkLwbGbUFDpLImRmuu4RGrrCySybq3fgg/TSiXH
         y+0b4b34KE3t0PbHCpe76+3AQm5LTZARNSbH1r414g+ejejYEUx/QSGAMrrJhcAamJzx
         lxWzjlEEPfy65wc8vOV9BIliIwGjdergm4/X4zf7ipHvfjj3gGWztLB3OvgyZzKZBqU6
         mCTD9HdVLHAqqjVyN0mx95HarHumtSNBsaCQt1zCt88Rt6pD9g7pjGK4LpPVz+6xDkZQ
         XXM8/xY/1CCumglc+qZ2DHl/LZ1tyh+CN5Xvk8eqP0sSoiRSLCA38yq8NuugrKU226pi
         bZtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id a67si112726pfe.17.2017.09.06.14.33.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 14:33:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserv0021.oracle.com (aserv0021.oracle.com [141.146.126.233])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v86LWwto029651
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 6 Sep 2017 21:32:59 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserv0021.oracle.com (8.14.4/8.14.4) with ESMTP id v86LWw1f032303
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 6 Sep 2017 21:32:58 GMT
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id v86LWw7I023858;
	Wed, 6 Sep 2017 21:32:58 GMT
Received: from mwanda (/197.157.34.172)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 06 Sep 2017 14:32:57 -0700
Date: Thu, 7 Sep 2017 00:32:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com,
        driverdev-devel@linuxdriverproject.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org
Subject: Re: [PATCH v3] Staging: ccree: ssi_cipher.c: Remove unused variable.
Message-ID: <20170906213243.gyttos3s64ckoswp@mwanda>
References: <1504732426-9765-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1504732426-9765-1-git-send-email-srishtishar@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: aserv0021.oracle.com [141.146.126.233]

Always compile your patches.

  CC [M]  drivers/staging/ccree/ssi_cipher.o
drivers/staging/ccree/ssi_cipher.c: In function ‘ssi_blkcipher_complete’:
drivers/staging/ccree/ssi_cipher.c:700:6: warning: unused variable ‘inflight_counter’ [-Wunused-variable]
  u32 inflight_counter;
      ^~~~~~~~~~~~~~~~

You need to delete the declaration as well.

Don't be in a rush to resend patches.  I normally write them then let
them sit in my outbox overnight and send them in the morning.  The extra
delay helps me to calm down a bit and focus better.  Even though I've
sent thousands of patches, it sometimes still stresses me out.  It's
like you're disagreeing with the original author and the reviewers are
disagreeing with you and everyone's trying to be nice about it but
patches are fundamentally points of disagreement and that's stress.

regards,
dan carpenter


