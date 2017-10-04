X-GM-THRID: 6472784237919469568
X-Received: by 10.13.220.4 with SMTP id f4mr33075624ywe.105.1507129711898;
        Wed, 04 Oct 2017 08:08:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.226.147 with SMTP id l141ls1048077ywe.11.gmail; Wed, 04 Oct
 2017 08:08:31 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDnkGRCYz0atO5HOlYyo8ALQkrVdod73vizujKmqHrVjRZGY0HFoZbSDBzUSMIqBKQmF1Hg
X-Received: by 10.129.19.10 with SMTP id 10mr34448163ywt.64.1507129711098;
        Wed, 04 Oct 2017 08:08:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507129711; cv=none;
        d=google.com; s=arc-20160816;
        b=PmwWqp3Z3TOfHEy5gRqTQHyvUG5x9Ksrbqa/35Z/mXbMYY4SkBEsOcNKdLHtLBOd8d
         LjbkXXeYP6wuVP5/u3AYO9BrpsiejaMK/xqbP1TEbNGajDcX1bS/z9mbBYlH/Rqi64+x
         TDQQo7+JSiPQ5jHBEj202iW94B8KI+mpFt04BFPY7Gs6dUyRkh7yTyF01Yh394Z0YDqQ
         JtWotqVheoLndVssaDbMAAIsO0uJvTlKsFWuyLeYHr7T+7rLgYglvdYP/xI9vY3p0qDk
         /h/4pL8yw1jlgneUEogsQ3NoFLh2iJAhePk+ewTBz+LQT3ccPoDC5wzDacoMGYYooiHX
         PJuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=LMKzaARvrcc5jvUIZZ/BtznziWCdy38PETPqPUG0gk8=;
        b=W67bmSDzzR4yJ06u59KN04TKaMdkQTEFAOtSeeIJ20ve2TXmvA81zhEt+7/Ok1Uaa1
         78iI4diaoABWNiIXDQ0HJ0+Ec7y04RrJo+75z28HT2GSISxwb1ZbQJOdvKaFfud7PpQz
         ADGYZZbApPXTdfpYBLafLc0ARzS5hw3F/9CXMZDKhHfX8PaHGNOAyq37lS9sLEzLoJyA
         x5IS9X3eGPbepG0pAcbfsxCB3njs03eZWCY9vjLjX+i1OLir3IOobHrYXOsECbcqauN1
         BlebFAkC4QV9XMYYIL7z2EtfQIqfndM+aAu0p/BszlmjXhdxfJPDNqPEoWhL67LcGIYz
         /Prw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id d196si118953ywe.7.2017.10.04.08.08.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 08:08:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserv0021.oracle.com (aserv0021.oracle.com [141.146.126.233])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v94F8Qr3015870
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 4 Oct 2017 15:08:27 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserv0021.oracle.com (8.14.4/8.14.4) with ESMTP id v94F8QXf015675
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 4 Oct 2017 15:08:26 GMT
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id v94F8P1V006913;
	Wed, 4 Oct 2017 15:08:25 GMT
Received: from mwanda (/197.254.35.146)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 04 Oct 2017 08:08:25 -0700
Date: Wed, 4 Oct 2017 18:08:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Srishti Sharma <srishtishar@gmail.com>, devel@driverdev.osuosl.org,
        gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
        outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Use
 list_for_each_entry_safe
Message-ID: <20171004150813.kajdk27w4ngrz57w@mwanda>
References: <1507122755-5489-1-git-send-email-srishtishar@gmail.com>
 <alpine.DEB.2.20.1710041533110.2815@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1710041533110.2815@hadrien>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: aserv0021.oracle.com [141.146.126.233]

On Wed, Oct 04, 2017 at 03:34:05PM +0200, Julia Lawall wrote:
> Again, you have three patches on different files with the same subject
> line.  You could add the file name eg rtw_ap: to the subject line to make
> them unique.
> 

And the subject needs to start with [PATCH v3] and then after the
Signed off by line put:

---
v2 and v3: Changes to the subjects and changelogs.

regards,
dan carpenter

