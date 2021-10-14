X-GM-THRID: 7018953255903297536
X-Received: by 2002:a05:600c:1990:: with SMTP id t16mr6912654wmq.124.1634227404561;
        Thu, 14 Oct 2021 09:03:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2051:: with SMTP id g78ls5048365wmg.0.canary-gmail; Thu,
 14 Oct 2021 09:03:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzTEFHcgKL0n8hrlxuuS4ZdJomHRYMJagZjwjER/yuzsnxW3s5zMb0ZtWEZh/EmWPp3D0jw
X-Received: by 2002:a05:600c:350f:: with SMTP id h15mr6736932wmq.62.1634227403077;
        Thu, 14 Oct 2021 09:03:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634227403; cv=none;
        d=google.com; s=arc-20160816;
        b=dNZVGcGWRtcJ2Z/SMAplotxs7OH/hFpMIT59nCsxmjS7YoHc5oig75co2/cNFWpQNR
         boYR2GETLAak2TYj2LeL+Cwj5zVURrjnjh5oFC9EOEKKOB1y9dB7+kqOhDneE2w4pwB2
         zb4sYCVvR5p1Dw7TTYfcLeJ+PP1GkjNn+L4G5YX+TODXA1d+RQtGucl34P2SsZxPI8i9
         GV602KSO0OTTeol3pdBagy6TKRJQlWJRnBhJ42ls/zsAbwMUp46XHvyX5mWtePYrDaez
         ESxWn/xd5ADV1tbpXoLSvE23N+qdrsAgIdDvmzSsvUuGTelEAApBZanVi4IIW0p9DByT
         dn8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date;
        bh=Xzyw4HCOEQQYFDIAM3gaL590ewNUXbdSmIz7Y9fuG7w=;
        b=HtN0eY2GswbgWXr+9v/C0Hpgd9vOptZZHEbvepzgj+DB2o148VijaCQSY3ulgN/9Ft
         lS2bBKCdh8zmqJat9r5ElqRzUEAKVmWs5TMd0UUAv6/lLBz+Mq06PSBxneTCOVgOqFho
         mE7nyUZHyXvupUxtxekiogMSjU5TbB54Y/JstFjpjP3KOgf/rpVSTSZgm7AF4xa5wtnD
         Ecy7j5qY9FCk8KAf3vzmMNWY22RjmupxvjhXpCCWOy8/jcdDzNysj/bTj/34eEYQggDA
         uA1lcYMKOA508G5HGVs0afXXO4c4yc2gywTMEB06MdB2HQYQzFLhwxBo37Mf7LvZLcc7
         /4RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id e2si193589wrj.4.2021.10.14.09.03.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Oct 2021 09:03:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="291195646"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; 
   d="scan'208";a="291195646"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2021 09:02:33 -0700
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; 
   d="scan'208";a="492059233"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2021 09:02:33 -0700
Date: Thu, 14 Oct 2021 09:10:37 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: KernelNewbies Editor Help
Message-ID: <20211014161037.GA426066@alison-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Hi Julia,

I'd like to be able to add applicants to the KernelNewbies editor list,
so they can help maintain the First Patch Tutorial.

Unfortunately, I cannot recover my old account.

I created a new one with username: AlisonMSchofield

As an editor, can you please add AlisonMSchofield to the site editors list.
https://kernelnewbies.org/EditorsGroup

(I'll try to clean up old account too)

Thanks!
Alison

