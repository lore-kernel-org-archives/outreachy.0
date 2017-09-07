X-GM-THRID: 6462940414905155584
X-Received: by 10.202.170.213 with SMTP id t204mr1056681oie.104.1504770900443;
        Thu, 07 Sep 2017 00:55:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.70.202 with SMTP id j193ls890533itb.17.canary-gmail; Thu,
 07 Sep 2017 00:54:59 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4+Hp4SlU/GhP9qpV+9qxJEWCW1swg8dWqbdx632SrS/NsucTjUatLGfdGU796CadzZ6S/6
X-Received: by 10.31.166.215 with SMTP id p206mr933862vke.54.1504770899547;
        Thu, 07 Sep 2017 00:54:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504770899; cv=none;
        d=google.com; s=arc-20160816;
        b=lfWVFzxzja3Ue+of2Bfbgxp76VnkXve0SlP1p6PKXGH5+M43tOAxm0nLZ6qsnVrW/Z
         69FYhVpGbT/fqV/wrFYl0N8fweMoQhM8f4bp8CpBSM+jHAQ24qyRW+ay/eLQu9Ki2RF5
         CUfBAsakfFxpJEP7E1N+4ZS/IMpr8S30jxhaVZLRaWqwgB5FbUAjZRIanfx5H0tHbDlm
         cQe3upry3AWuJhEGrMMnh12F+BeklRSz2CyYZkK1++K8zREHxeGB0kA9rPwGJyWtbp6I
         9Fkn9EhxWi3uAPQbCFyFb1EStws/jFWsqoXNvHLB1i5b5Xp1ia1B6otAWqX1YyKhqnb5
         EUfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=OISkejdCnUQ7n1u+9AO5cwXNSfG1nz9xfUQ6TViyWls=;
        b=zjJcvgGMBgyvGxduqRupy16qwYzPiHX/DL1bEDmrK6dE1tw/vB0Fe7jkwvTScxIMJL
         CDUR0kNKpiKvEQ6TmIz5M3NgjMSYgfOCnHBz2vzn9gzwIzUBHhdxE64GYD4QsMxmlByi
         gxJ224SvwoYlHESUqPbyHr+nodk3yj174G4MK7OSYsUubEQx6sonNPxPO2bEJJkn52IR
         m/zsn8cQq8PIdo0nGwStZiWoXYQOhNowqXbaWTgds2evUmCVr1uxPai9jsbKFLmhgfE4
         tGHTsomV4M2UIPSASBcX4jT8AxPYq8wpQe8UFE9WDr9N9yDvUOVNqvIbBFtyptA1Z1qf
         oFEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id u4si124647ywc.2.2017.09.07.00.54.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 00:54:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0021.oracle.com (userv0021.oracle.com [156.151.31.71])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v877ss3v024338
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 7 Sep 2017 07:54:54 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userv0021.oracle.com (8.14.4/8.14.4) with ESMTP id v877srrl020207
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 7 Sep 2017 07:54:53 GMT
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v877srXF016295;
	Thu, 7 Sep 2017 07:54:53 GMT
Received: from mwanda (/197.157.0.35)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 07 Sep 2017 00:54:52 -0700
Date: Thu, 7 Sep 2017 10:54:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com,
        driverdev-devel@linuxdriverproject.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org
Subject: Re: [PATCH v5] Staging: ccree: Remove unused variable.
Message-ID: <20170907075439.3wf2saxv3vf2mxcu@mwanda>
References: <1504770561-5554-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1504770561-5554-1-git-send-email-srishtishar@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0021.oracle.com [156.151.31.71]

Looks good.  Thanks!

regards,
dan carpenter


