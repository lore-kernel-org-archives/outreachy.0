X-GM-THRID: 6749515623301120000
X-Received: by 2002:a0c:8e04:: with SMTP id v4mr15765889qvb.98.1571508455589;
        Sat, 19 Oct 2019 11:07:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4852:: with SMTP id v79ls425843qka.2.gmail; Sat, 19 Oct
 2019 11:07:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzZNjT6NQDsubymJlINnGXfD/qsWw2D+bu91puWq2WImoqU5wgZ6pSvqrQudqGDZ/laDdWT
X-Received: by 2002:a05:620a:6c7:: with SMTP id 7mr15374024qky.258.1571508453861;
        Sat, 19 Oct 2019 11:07:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571508453; cv=none;
        d=google.com; s=arc-20160816;
        b=Y11egVux20hpW2Ax9V1YY/MxAflZlwA50O0K21VFDLFfes80GWKDj7XSn1Z+yVjSfp
         P1/q9ZtXo9IyxGalseIJSn3yPjCl3KrnzrWvd+Fi+KLN+KQvsJvDyUA9TGZ2iB/Jpc8b
         cNfd35dsOU+n3xnbTwfK9+mYCYlN93GaA250PLo7GJVYrvg/nHueD0hTxUc5fR0AtVMg
         IzolAbJkBO4YEdGcdkOnhfOVyY1zH/bwtO2idk0GvWvy/Puqmg6gKonfEyT/wXxIr4CN
         PbuxOqyzGs6R0Z4sglxYLQFVQa+fTlPMOHYItjfmW2QseHJ5O8qEzSMiWobYgvMnSIJS
         wszw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xzaow11/xSCqBracFjPSult9QZ36gtDXdo3LvSEBtNo=;
        b=M0GqoSBE9JciLRWdlwyPoSFpS+O2X/vRxMaYTN/92yz4ZUDtDk/QBlOixBPOGqdnZc
         T1IiOkD499y9dGxQ3qjWLxcYAT4w5+/hP3xlnXaWAoU2yP7KEQNymGlfAt0D6O045pFk
         7wjqfMnc9vdYVzZaIegotzNDd0wbPghJSnirmyNtYH6H6lUyJyiycH9qs5sFSR2tIUDj
         n6yypDNG0fDdiUPXDTqltaeSYiXPThZVOakwo09Nw2NkBjKLUyYmKgHPZQFESUYWF/9E
         sDtZkK/7+rNT9SJ1HkKvFoQUeldxdkpCLqmS0FwuCnXcPlV1ukZh7WPYrDxrZZOjbL/0
         DEIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=iDtdMIIk;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id r28si106780qtu.0.2019.10.19.11.07.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Oct 2019 11:07:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=iDtdMIIk;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9JI4PpP055516;
	Sat, 19 Oct 2019 18:07:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=xzaow11/xSCqBracFjPSult9QZ36gtDXdo3LvSEBtNo=;
 b=iDtdMIIk2Ez8a4Y7MNJiIuvn7RpyEMjJg6bALuhHOrokqqRWY0LxR0L1Rk1lZEuwyRJf
 jT5IoSHoudMQe46OEo5xDPYf7McxF1JI+DjVF/V8Hy9ba9Bpv9eDwunKmRuPr2J7T0nL
 MP/2Fm81f9/KvbH2dbynifA7r2/MhQcN6/q5YD6ZwLFnYXmJa5+14PX1r9X1vTRLEIsh
 n5m4A0zf+KYByoNz4HtDSsDNgzEWGfqGE0/f6QoZZ/VX5distDMipKOER2mw/uZAX9I5
 vF8Quo/3IBxxyVyscp4wpQseKrKLVWeROqJ5iM1c4NWumI1QP8rIDUXbfs7T4BSlRL6V vg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2120.oracle.com with ESMTP id 2vqtep9kp1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 19 Oct 2019 18:07:30 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9JI3sUI036452;
	Sat, 19 Oct 2019 18:05:30 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 2vqrhe7fe8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 19 Oct 2019 18:05:30 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9JI5SJB019107;
	Sat, 19 Oct 2019 18:05:28 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Sat, 19 Oct 2019 18:05:27 +0000
Date: Sat, 19 Oct 2019 21:05:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
        linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is
 necessary
Message-ID: <20191019180514.GI24678@kadam>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com>
 <20191019142443.GH24678@kadam>
 <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9415 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910190170
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9415 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910190170

On Sat, Oct 19, 2019 at 04:09:03PM +0100, Jules Irenge wrote:
> Checkpatch was complaining about  space between type cast and the 
> variable. I just get rid of the space. Well I don't know whether this was 
> false positive one.
> 
> Thanks for the feedback. I will update the patch.

No no.  The patch is fine.  I was saying that in the *future* you might
want to look at the void casts.  Some of them are not required and
others are buggy code.

regards,
dan carpenter

