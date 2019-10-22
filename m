X-GM-THRID: 6749515623301120000
X-Received: by 2002:a25:3c83:: with SMTP id j125mr1594850yba.63.1571734647223;
        Tue, 22 Oct 2019 01:57:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3a06:: with SMTP id h6ls2422977yba.6.gmail; Tue, 22 Oct
 2019 01:57:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz1gnTJmSUu/4wIDWWFmrBXo7wH3vQdn8ArP0oOURz1iYZhWxUyvgyDWR8VvAII4Oz8YhJL
X-Received: by 2002:a25:680e:: with SMTP id d14mr1653389ybc.226.1571734645682;
        Tue, 22 Oct 2019 01:57:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571734645; cv=none;
        d=google.com; s=arc-20160816;
        b=coVnEegfLenZdgbXaiwwHoDFNzbZ3u2dHC+NvmtifTVimkSBR7hdqmY7MLYfSXAQ1j
         Q3Pr5zf2iIaDGiuYOU0Xibsu0zlRwzfLg7mzEIgUP7qsFe7kAxK58471zPRQzp/J+5z/
         Wu8zOToVYnO3VT47FZaxHLBv+okHi9r9X6mFg/L02/0sgKZiCbx1foHS/OKPcC+qIR/r
         eM7Wte8asSBYxVtmw5T+AtbzCgXeac5irrMiOmHXKbM6KVy3M16xhyAPnxcrPS2S7ArF
         /zkj2aJ8btZw7E5/kAzmeTCLvUPxAO58rhSJzCOTQrYw0mC6pQAcU3lYT4XRPqDH8WDI
         Vk2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SFu/TFiwpeeKX8PKL3pXaA9wgPMjspuyljVipqet9AI=;
        b=Sad8zkjIfM6UY6qPN42xApRvmqnj9n9joqyXzCDYYLGvT9yOwWacYcPOD811mVEp2H
         ZwVAfD7X901v4Tu/YIVTy4sc8/+yAunwS78RXKtsIC7YxXCi5k7uSnEj9ET0WWbTammm
         nZcgg4mL1ox0Yig87JfCv2TCPoqyqo2LDmcdc45v2V6mUNeEzRQ0NNqrGUZSTe9hakmo
         kjL2LFBritNVBB96FvG7uqhaiZFyTruLrA8uW4S3A0r9FIZCHirzrej9qgVOE9k0ma6s
         O0zSxyAnypIE1JpfEuYGVYGddM/5FxN5K4dkraSqBk6/Lyd6kE4pMOBii6sKG35GSCkS
         nlCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=RXHqFYIE;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id a1si934596ywh.3.2019.10.22.01.57.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Oct 2019 01:57:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=RXHqFYIE;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9M8sBCV143259;
	Tue, 22 Oct 2019 08:57:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=SFu/TFiwpeeKX8PKL3pXaA9wgPMjspuyljVipqet9AI=;
 b=RXHqFYIEnnvhHtMuYiLTp2GXmOtWrKyY7PL3m/PD187bWaJonFUQpY8to/P0D9Wd5+pw
 ZQqhs+FJw4DXjPNPDBW7dbCAriWL6ZCVr993ByrTBhS7xJvuCYD7tcUoVaaV/j6NsqJA
 RtTRbGNkNubi4C4Ijek/gZY7R+ZKHCYNgXync19JquvRDs843hTJdHX68CoHZwPZtvCY
 unYByJvAz77iBvGnyokRqAzVXxJ8weziwh/ZRB7I6KCr6fAbrNXhAM4nh3q6Ln4MVII5
 MyhDBr8qoWKywhf0g8xI8Dek+Gj1DT+cbTKbwKEJ/a6D6n0bK+TsxrcjNqoe0QxlLzce Yw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2120.oracle.com with ESMTP id 2vqu4qn0q8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Oct 2019 08:57:22 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9M8rDwP049157;
	Tue, 22 Oct 2019 08:57:22 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3020.oracle.com with ESMTP id 2vsp3xpt0s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Oct 2019 08:57:22 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9M8vK2q003695;
	Tue, 22 Oct 2019 08:57:20 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 22 Oct 2019 01:57:19 -0700
Date: Tue, 22 Oct 2019 11:57:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, Jules Irenge <jbi.octave@gmail.com>,
        linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is
 necessary
Message-ID: <20191022085712.GK24678@kadam>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com>
 <20191019142443.GH24678@kadam>
 <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
 <20191019180514.GI24678@kadam>
 <336960fdf88dbed69dd3ed2689a5fb1d2892ace8.camel@perches.com>
 <20191020191759.GJ24678@kadam>
 <6e6bc92cac0858fe5bd37b28f688d3da043f4bef.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6e6bc92cac0858fe5bd37b28f688d3da043f4bef.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9417 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910220084
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9417 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910220084

On Sun, Oct 20, 2019 at 12:36:50PM -0700, Joe Perches wrote:
> > It's sort of tricky to know what "one thing per patch means".
> 
> It seems somewhat arbitrary and based on Greg's understanding
> of the experience of the patch submitter and also the language
> of the potential commit message.

Of course the language of the commit message matters.  You have to
"sell" your commit and convince us why we should apply it.  That's a
life lesson right there...  :P

regards,
dan carpenter

