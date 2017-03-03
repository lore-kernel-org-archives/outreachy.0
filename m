X-GM-THRID: 6392835608825298944
X-Received: by 10.107.183.4 with SMTP id h4mr933893iof.16.1488542275733;
        Fri, 03 Mar 2017 03:57:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.99 with SMTP id f90ls8096565otb.24.gmail; Fri, 03 Mar
 2017 03:57:55 -0800 (PST)
X-Received: by 10.13.221.140 with SMTP id g134mr988919ywe.55.1488542275336;
        Fri, 03 Mar 2017 03:57:55 -0800 (PST)
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id s64si511pfk.0.2017.03.03.03.57.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 03:57:55 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
Received: from aserv0021.oracle.com (aserv0021.oracle.com [141.146.126.233])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v23BvpcI003516
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Fri, 3 Mar 2017 11:57:51 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserv0021.oracle.com (8.13.8/8.14.4) with ESMTP id v23BvoBC020708
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Fri, 3 Mar 2017 11:57:51 GMT
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v23BvnRi019906;
	Fri, 3 Mar 2017 11:57:50 GMT
Received: from mwanda (/154.0.138.2)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 03 Mar 2017 03:57:49 -0800
Date: Fri, 3 Mar 2017 14:57:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, juliana.orod@gmail.com,
        linux-kernel@vger.kernel.org, sergio.paracuellos@gmail.com,
        noralf@tronnes.org
Subject: Re: [PATCH v2 3/6] staging: wlan-ng: Fix sparse warnings in
 hfa384x_usb.c
Message-ID: <20170303115706.GE4132@mwanda>
References: <20170302130050.GA28609@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170302130050.GA28609@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: aserv0021.oracle.com [141.146.126.233]

Ugh...  No.  This is totally wrong.

Please review how endianness works.

regards,
dan carpenter



