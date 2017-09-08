X-GM-THRID: 6463333308428189696
X-Received: by 10.36.192.85 with SMTP id u82mr1086226itf.49.1504863581363;
        Fri, 08 Sep 2017 02:39:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.140 with SMTP id f134ls978568ita.16.canary-gmail; Fri,
 08 Sep 2017 02:39:40 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb60IKwbIrul7AJuMQ9xtWQiSYu1C2C1RcVaQa0hLAjnyeQKosvHPNVQa6x94m8e0SfJroy1
X-Received: by 10.233.244.8 with SMTP id y8mr1202752qkl.57.1504863580741;
        Fri, 08 Sep 2017 02:39:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504863580; cv=none;
        d=google.com; s=arc-20160816;
        b=R+8Jv0uS/ipiCajen0Hnq57gEKqax6lcr5ixScS8AR3KKtX1E65I7Sq4QzWxPNYi0Z
         bLyK90egkJQLDE/atqdOHZgXDEonFaXEBcTbogC2lcqbpDkz86aVwY7mKPzoraS9+FV4
         HeNoP5OuYWqdZk9SdJr8tsT1ptOwIsGOwz6RD3xYT1CTPJUUCnprYauIR/RAY6lst/eb
         XG61+3jobLaiO5OtD7ScVsKzqzd7u8JBmbcUgjWeJxuWyXCt+B2hn5sDRFZBsVAj7vh3
         /gxxbrCdsKEBqHPIiejGDLnBN9lSh9rCE9F9jZW4A6EwD2WYHQEYPE/I8wgB9YPw/d3+
         i3fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=yrzHUnl1L2VxvtfqvN8au8osU/uU58opxQXM3bYFbTw=;
        b=yUnqh//Vg81XsiMj5eb4yZNAAz7WK9GLBZ0Fs19oHjwYe9NQGyi7LCbN8ZtjRHslZ0
         1cFBpolgiuHIuyMiRmmCS3xfkHD5SLyBoxYOg7tMyzVWHfd38Opoh9rUK2e2AmoaiYPa
         GUSgfSK25W2ZYiaO6xSKlzRSiaA05xB7aBbDlAWV5rPLggw+PKIsOs1hqFHlU+ouQjON
         gtek1hr5Wl+vHgfRHWjUtRHiyUE3ggMU/FOluZUX+yuor0hp3D+Ekro+cRWlsm4wlZ79
         x5FkBhLVdNILuxeIekd28vnsPqal9oC8rIkYWCtW1bTfAJYxVMxr5PxKzrHLnKTrdVT1
         g35w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id f189si207825pfa.1.2017.09.08.02.39.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 02:39:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v889daQ1016421
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 8 Sep 2017 09:39:37 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v889da8k007491
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 8 Sep 2017 09:39:36 GMT
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id v889dZYe002437;
	Fri, 8 Sep 2017 09:39:36 GMT
Received: from mwanda (/41.210.145.102)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 08 Sep 2017 02:39:35 -0700
Date: Fri, 8 Sep 2017 12:39:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: harsha <harshasharmaiitr@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] staging: pi433: Fixes minor typo errors
Message-ID: <20170908093927.vz7upnl6xukl74fx@mwanda>
References: <1504861934-15419-1-git-send-email-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1504861934-15419-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0022.oracle.com [156.151.31.74]

Your From email header says "harsha" but it should match your signed off
by line which says "Harsha Sharma".

regards,
dan carpenter


