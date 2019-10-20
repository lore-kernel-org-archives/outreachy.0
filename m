X-GM-THRID: 6749515623301120000
X-Received: by 2002:a17:902:7d85:: with SMTP id a5mr15358529plm.324.1571599098879;
        Sun, 20 Oct 2019 12:18:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9343:: with SMTP id 3ls3223780pfn.15.gmail; Sun, 20 Oct
 2019 12:18:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyHjx02nctAUhtpHaO9MYnVDiUmy5+7Ts4J6R5nG3bjS42+ep1js5n+1FmgRPSkWIELG8+1
X-Received: by 2002:a63:4d8:: with SMTP id 207mr22314666pge.168.1571599097938;
        Sun, 20 Oct 2019 12:18:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571599097; cv=none;
        d=google.com; s=arc-20160816;
        b=lyAMrOdDpv3kNSDgxxvhWWojlsVBFSyT335YydzvNj99XhHCqy1RNfZEQk5hnUMk/m
         LMXWbvlE0SeG4XYPfIk5iKi1FMl6AlNqyoNVwzkzxX1RYtGV1ElG1PwOuZRk0e/Q775W
         CZYAwvyWM9PcNnYqc8YE/+AX06Xq0zOBunTKFHKXG5O+3VpF9XieJSvZJDWfZ/lwKaZ4
         LhHk6/PJNQuYcBfGbUxXuVLBzXC2WmhnST21EvWGjUCjkIusOHkXQ8YY2/2/y2rsKJz5
         hlR6ss3egi91OokCDzmUnfGAteVTUdZws1HAOYambAzlElhfVMhSJtEeZFjmb8F2K1Qq
         jqAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=34Vdw1WCYqerk3vPMHnUTd4cEYgBGYPHBeKZ2jLQCK0=;
        b=eBJp33bEotSjjq/vD2P/n9P+asSxp1fVunY0R4zvdO/5WxzQoZGR7MHI+iVGQf+stV
         w69V9i92+q+l8i3+MbK+G++DC9Wtj88+SAx78XMD0kJev4M+Uq0UyJ37bAn814MiFKwt
         mt/3765inBRxa7QvDZWGbTE6r7ku/vliUXTJg0Hdf+wR8rKOD/V34NT/yUm9sBeSe8tZ
         fUmMFVR0ziHs89RqYVRWoaswuq83I4jr4PTKzDLFUvqufkz+U/MhOYNR6FVLcougfb3b
         AuXBCvnfNPjAPNhWNRGNtgC4JFa9c2Gsp8VG0ht1id0lriS8LKdZKYn3H6rVfgOA55l+
         8kBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=jK84XfyT;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id t17si542216pgk.0.2019.10.20.12.18.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Oct 2019 12:18:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=jK84XfyT;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9KJF1Wg172880;
	Sun, 20 Oct 2019 19:18:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=34Vdw1WCYqerk3vPMHnUTd4cEYgBGYPHBeKZ2jLQCK0=;
 b=jK84XfyTARhzekulLY2QAZcAwNEyHgm6f4ryiIF7+u58SPQj/OYZj//JEao+M6TB+SDK
 UdBBIzkbAAneqBF80CWYjVvf/GQ3UXcxZeV+q+FfT4pnoQh/N2G54283kbEQqoIrJnFj
 X23FlB+L06j8QCT56Yrx02HzE1S3ZhBpFQ/4y8SqHJJsp0w3Yd+cOxkXx5DGNf02GunI
 EOM+WNVnSTGeVDddI1sfglasCBzC5JA9k58+UJLQ21glYRt2ZLehNNFjETGXaDCuSp2H
 IsW1DSTlbahfY3f12VOVRFo5eAusdx84zNmvUmB8U0Gjji+tBmq4YF8quKEDFOJTiszx Gg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 2vqu4qbqtd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 20 Oct 2019 19:18:14 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9KJHwsF175882;
	Sun, 20 Oct 2019 19:18:13 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 2vrbxrg5kq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 20 Oct 2019 19:18:13 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9KJIAuZ010905;
	Sun, 20 Oct 2019 19:18:11 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Sun, 20 Oct 2019 12:18:09 -0700
Date: Sun, 20 Oct 2019 22:17:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Cc: Jules Irenge <jbi.octave@gmail.com>, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org,
        gregkh@linuxfoundation.org
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is
 necessary
Message-ID: <20191020191759.GJ24678@kadam>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com>
 <20191019142443.GH24678@kadam>
 <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
 <20191019180514.GI24678@kadam>
 <336960fdf88dbed69dd3ed2689a5fb1d2892ace8.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <336960fdf88dbed69dd3ed2689a5fb1d2892ace8.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9416 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=884
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910200197
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9416 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=963 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910200196

On Sat, Oct 19, 2019 at 01:02:31PM -0700, Joe Perches wrote:
> diff -u -p a/rtl8723bs/core/rtw_mlme_ext.c b/rtl8723bs/core/rtw_mlme_ext.c
> --- a/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/rtl8723bs/core/rtw_mlme_ext.c
> @@ -1132,7 +1132,7 @@ unsigned int OnAuthClient(struct adapter
>  				goto authclnt_fail;
>  			}
>  
> -			memcpy((void *)(pmlmeinfo->chg_txt), (void *)(p + 2), len);
> +			memcpy((void *)(pmlmeinfo->chg_txt), (p + 2), len);

I wonder why it didn't remove the first void cast?

[ The rest of the email is bonus comments for outreachy developers ].

And someone needs to check the final patch probably to remove the extra
parentheses around "(p + 2)".  Those were necessary when for the cast
but not required after the cast is gone.

>  			pmlmeinfo->auth_seq = 3;
>  			issue_auth(padapter, NULL, 0);
>  			set_link_timer(pmlmeext, REAUTH_TO);

It's sort of tricky to know what "one thing per patch means".

-       memset((void *)(&(pHTInfo->SelfHTCap)), 0,
+       memset((&(pHTInfo->SelfHTCap)), 0,
                sizeof(pHTInfo->SelfHTCap));

Here the parentheses were never related to the cast so we should leave
them as is.  In other words, in the first example, if we didn't remove
the cast that would be "half a thing per patch" and in the second
example that would be "two things in one patch".

regards,
dan carpenter

