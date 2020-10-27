X-GM-THRID: 6885936091088551936
X-Received: by 2002:a5e:9519:: with SMTP id r25mr1890990ioj.125.1603803047676;
        Tue, 27 Oct 2020 05:50:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9a87:: with SMTP id c7ls211174iom.6.gmail; Tue, 27 Oct
 2020 05:50:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkf/OtMnG99/SwiRLDbaIRg7sEq/ipSHdqeLjccOePHzQia97rCuNnxt5loMtYIoiw8Tvn
X-Received: by 2002:a5e:c248:: with SMTP id w8mr1890676iop.132.1603803046357;
        Tue, 27 Oct 2020 05:50:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603803046; cv=none;
        d=google.com; s=arc-20160816;
        b=KAcEehNa3z7SR+7+NkCoqYFWwaXlB0w3mQNN89oNXML1qZf6kIqNAaWck0ifRxh/cw
         4738Jc+SIDT2ew+CGItkDQ9jgXGw3Qq1Frw6qux0fYmfnFheX+iFWEfCaInO22IGZoah
         1Hv6Z7cJChZVlnHjNKZPXV1MaU5hhTpvqAn0KMwMEW5oDB075r/n6fKwzsj4XNev2YGE
         DwXptsC4yTNDSmD1P3mHQevlVN0X9ZqqbE/nh7s9WkqNbtpOBjBT6yWhZElWQBqb5rs/
         sXCNY2BIogCL9rcW+SgKuYtzhrt6zCKC21nkce25i1Bs1DCbcztbp7ClUn+VtknirEDG
         tMWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7eHD1CPUGD8Sh2Ytf9O98EsWKlv6Dzdcb05LLZDmo/E=;
        b=0R3ytHKqy28Prya6dL0sNAuaSJ+LdW11r2bXeG2AQhrm2QUvdAIpnos+Lei8/deAml
         B5DmwkE/p8AHiIE+Up8l9/MA0cejnoafd/V06kn0NbUbF5bojYB7Ne3V7jLpgARPbA4h
         DNT/nJ9gMB/RHQfOYNI/90I3Af29r/0rWkyN0DbkAXUUtpJoeXhXnOWEnNtuT7HymXMC
         lBY5sE8BOPh9s/yThWX6w5UTIbSzte26caqthWdtEmhIQ1apXwJlCPttohsDmalHPrIU
         K6Zd/aQirca0q73KSq6DUK8Rs20Nm9+Ai5xA+CYSFpnPAJaW1u+ZRAiY0SJ7BNiZ75ex
         r6gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=IDrCBNSr;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id i18si79711ils.5.2020.10.27.05.50.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 05:50:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=IDrCBNSr;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RCnHrb057840;
	Tue, 27 Oct 2020 12:50:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=7eHD1CPUGD8Sh2Ytf9O98EsWKlv6Dzdcb05LLZDmo/E=;
 b=IDrCBNSr65H1q6NJGTxS585/OWymCy/iqqHkqWD4fb/XlSt69gckS2YHVGcTwk3SCv/x
 ebBCRDFham3baIOi78DVNCdfrKYQZVlXGLWQ078YAUIt/OexlO0OPH/FsnaGiiMoQW7v
 A0pv4OZfyNO7hmD+W8+gq21T/LYS5BM0ppM8I21klYqBrF4lnWx+4MFbrHlAnAvTKD26
 RzG3tDL0Xn5c0hOs/x3iVXIQejbYu8LjN2bp2Mn//lZe1UHBgh9M7niJIYSb8lxvuf+E
 CSBbgONOHo7Enf23mc7dv1egYBaOy9nVV4iBn7/XqdJv8RtFflFb/Eam5rFOcdx0SDuW mg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2130.oracle.com with ESMTP id 34c9sasuc8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 27 Oct 2020 12:50:38 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RCVY2C142332;
	Tue, 27 Oct 2020 12:48:38 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3030.oracle.com with ESMTP id 34cx6vwrne-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 27 Oct 2020 12:48:38 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 09RCmapQ010501;
	Tue, 27 Oct 2020 12:48:36 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 27 Oct 2020 05:48:36 -0700
Date: Tue, 27 Oct 2020 15:48:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 1/2] staging: kpc2000: kpc_dma: rearrange lines
 exceeding 100 columns
Message-ID: <20201027124830.GX1042@kadam>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
 <20201026040453.GC5074@my--box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201026040453.GC5074@my--box>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 spamscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010270081
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1011 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010270082

On Mon, Oct 26, 2020 at 09:34:53AM +0530, Deepak R Varma wrote:
> On Wed, Oct 21, 2020 at 01:01:07PM +0530, Deepak R Varma wrote:
> 
> Hello,
> Requesting a review / ack of this patch.
> 

Wait a couple weeks before you ask for feed back.

regards,
dan carpenter


