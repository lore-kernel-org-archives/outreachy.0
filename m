X-GM-THRID: 6746422022313607168
X-Received: by 2002:a81:d501:: with SMTP id i1mr1752979ywj.108.1570791536141;
        Fri, 11 Oct 2019 03:58:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:48ca:: with SMTP id v193ls725244ywa.12.gmail; Fri, 11
 Oct 2019 03:58:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw82MPN4kzk20NfZaLhG2bAD8tNQm6o2j/BMJujAf7bFpfh7gPP7K5RIUQ0rllvzkKCDURT
X-Received: by 2002:a81:8683:: with SMTP id w125mr1950870ywf.236.1570791534926;
        Fri, 11 Oct 2019 03:58:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570791534; cv=none;
        d=google.com; s=arc-20160816;
        b=lv3ZHNRWmrVJNOoYMipsST82aCLCJA0zV64tGpcSP3PCiPpdtruYkWAQ0oHqN9hQsI
         hdUHlVEgekpAegFS+og1yZQJm89L7jw97CehznPqLwmKBR0fW6wbj4lUGr67lHNE4nF6
         oe9R1Fv4vSIvMynZhOVE+pe1lcC/y8EI4rdYI6ZDXkp/QblD4fNdWQTNEUDtht32ivNU
         wmkRLvxLm982qLM8CYDwlFc8eOUYxPl8wJm79ABt/XQkqSYh7zAdN/MnpvkQsLjVpKkh
         ErKYvBmjZTle1b38/RZ0J9VnDoRuzDdey6ZKSnGkEL01ke7uP9lckG6m+gfPLOKxso0j
         H+SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2+Wa7wS3oWd2Zr0vdoPEF6aAnQQ9hFaPuFRwZk86Ews=;
        b=fnPNEpj8wdTZ1wG4CNSIdWYW/xZIfsp88ZHXkS7ujektN+26VKDQnatK660RTSfWBF
         TyK/9fFzJNHqNH7fu4bXAfAlyGp70wzfUrWDZcSANq681JBfb0FV3HY9n4ddRWwQyNNa
         Y5/t7DAI3LjyulhVm0gAE2lrzWmXYcRV9wWOS/p3UPQMoPJccNo0Hw2EFehj4D7g2EbV
         CAwzTovm1Xxa/H3+EuuhbXFH5Z26SYTKKoU8fIPZnC6QCkX8pt9vITrXd9Vv4Ty7BQIS
         JWMXOYA55TJii0U5DjYiDDGsUBucFmtHXsAh8W594Itymn+kenpBZK39251ApmeoZPUm
         hYaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=UFFCIe76;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id a1si610593ywh.3.2019.10.11.03.58.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 03:58:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=UFFCIe76;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BAwgEI021085;
	Fri, 11 Oct 2019 10:58:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=2+Wa7wS3oWd2Zr0vdoPEF6aAnQQ9hFaPuFRwZk86Ews=;
 b=UFFCIe76+UOJRY1dNMZ3/CmqTTe2zkODOKNfGsAD7Hpu/Uieujl/YtNlKrdTtSc0g9UY
 NMeNfT+gETYtv1xyDdP+JuioI6HJOFpqVL6WfUu0Br7AjeHb5/5ZHoqSJqk+Zb7K0Luo
 Rx74KWa1PaB2ZlFnp0LwoX7vl7TXU/7TJPMhW0xMgF7KnAACY44+5gnokg1ZVDPWsAUA
 KuNBx1Sw5CYclIEmexZpxsAKY09cDcPCa6AXc5he//Zw0yE5BNBSOkOm5N+uGyhcmyOm
 9MK0lbIY0mQUwvHx7Cza8vBTxXYA6BVAUbdiyFovavL0ZcErB4SLuWOsKHIsInGKGeb6 XA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 2vek4r0tvy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Oct 2019 10:58:52 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BAwpmJ012004;
	Fri, 11 Oct 2019 10:58:51 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3020.oracle.com with ESMTP id 2vj9quk4jf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Oct 2019 10:58:51 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9BAwBaL032347;
	Fri, 11 Oct 2019 10:58:11 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 11 Oct 2019 10:58:11 +0000
Date: Fri, 11 Oct 2019 13:58:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wambui Karuga <wambui.karugax@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org,
        gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: octeon: remove typedef
 declaration for cvmx_wqe_t
Message-ID: <20191011105804.GB4774@kadam>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
 <1b16bc880fee5711f96ed82741f8268e4dac1ae6.1570773209.git.wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910110817340.2662@hadrien>
 <20191011085952.GA9748@wambui>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191011085952.GA9748@wambui>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110105
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1031
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910110105

On Fri, Oct 11, 2019 at 11:59:52AM +0300, Wambui Karuga wrote:
> On Fri, Oct 11, 2019 at 08:18:25AM +0200, Julia Lawall wrote:
> > 
> > 
> > On Fri, 11 Oct 2019, Wambui Karuga wrote:
> > 
> > > Remove typedef declaration from struct cvmx_wqe_t in
> > 
> > You can remove the _t from the name as well.
> Should I remove the _t from all the enums/structs?

The _t means typedef (sort of, generally).

regards,
dan carpenter


