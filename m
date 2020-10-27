X-GM-THRID: 6885724042283712512
X-Received: by 2002:ab0:5e95:: with SMTP id y21mr764360uag.21.1603798633318;
        Tue, 27 Oct 2020 04:37:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:2dd0:: with SMTP id t199ls119909vst.10.gmail; Tue, 27
 Oct 2020 04:37:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyB3cvQ1+LeOzcXUuQnge6KDEK21asXyZABGaLvIaifdkBr8dLEfPz/n6AD05ifUKlLbs7L
X-Received: by 2002:a05:6102:30a8:: with SMTP id y8mr945201vsd.21.1603798631945;
        Tue, 27 Oct 2020 04:37:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603798631; cv=none;
        d=google.com; s=arc-20160816;
        b=pxjJJUox6e1QtTTJQWwsyzLm2eMVaPZishD0cnZfZpwis85DOA2+dn1CIYQlKjgMxb
         AmL5mVEiTNfqNfv+WqXJQ35omN4LGVyBacFMCAyoANAwtbTlVafvd5ScfzeQZN4i+f7x
         FxCuOwWhS1rymgP4EtDDz0/PaevReqJzcb+8dKp1FNPqQZ7pPjJM7ej5LtaAeRiz3mya
         nw5DhFO+dGw9uvApIm5PtDRugsClnvg6DnW4T2YghIwZvqAGyZlM/JCRpDy0wZa1MKMY
         7OP5BQikgVA3OcX3t6+/b1g3PmtOcCQNO3LOapfKG4YRK5LBuH6UnNEeG6ApVCzSZM/l
         hkXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=aouPZYz7RHmgR1uBUCoJ/MlA+M3+3yydiD3bS8FR5Us=;
        b=Up6keIPlKM3kVVKjC9TPNKQmx3HIX0aa7rhRqPQEeiLwC76gu8Fk532Eu3ZL7u28IK
         GpxKc0xai8dD59FhPontTHvgbfXKFf4ct9wQyYjNvNekVMQDc+Esql0Ivi2naYm3JPyu
         LKgBlqoov/pw75SlL5aR/Ie4KsfLQncx9gOSZeMskxu9zCOIzUG/nxuZnJwZ2cG+/J/m
         4AuXZ92M7/DWB/wUGIDuLPrds9DTdcZNj8BfPVkUQXI2y8nqYdR2GmFYAmtybYSL18Om
         PP4NZ+Sdn43X7DVMJDWA12NerZ7P3zmO4XzfieDqvQVVTd5Jn1bCj0fzwFy7HH08Ef1j
         cZGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=rEVHArto;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id h2si77223vsr.1.2020.10.27.04.37.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 04:37:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=rEVHArto;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RBTYfE107093;
	Tue, 27 Oct 2020 11:37:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=aouPZYz7RHmgR1uBUCoJ/MlA+M3+3yydiD3bS8FR5Us=;
 b=rEVHArto74ziLYsECKdwjKOPZYyjz2vjtnFyN3cmBTYiWMjkriqJfwiHZQ5ydoDq+GNt
 eLfSGw6dcwFNiEoi+s56Kw9G3Ws+iXiDbl4Vyy7inhNYVmkGPiwc4GFjmT+Blks9h+9S
 qgpsuBs3Mev3n0ZDzTbZ/QjU8llDXh35e9YD+CdT8g6I5OnEsw5qhm8KXg4AgMRca6+x
 fPatnE4xKmCg4Fl1wYmWc9T3joGUlSpc1N+2cpmWEECeG7gWGecGi6IWEtkASWlGOAQ2
 JnB3tzMHwUVxr+QCOvF+76qDxkNqFBtSPcL3uzN6kFpSThIdHxf+EmyzFRFZA7ACzwPK tQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2130.oracle.com with ESMTP id 34c9sashwq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 27 Oct 2020 11:37:09 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RBUV61047945;
	Tue, 27 Oct 2020 11:37:09 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3030.oracle.com with ESMTP id 34cwum97p2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 27 Oct 2020 11:37:09 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 09RBb80h029465;
	Tue, 27 Oct 2020 11:37:08 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 27 Oct 2020 04:37:07 -0700
Date: Tue, 27 Oct 2020 14:37:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Elena Afanasova <eafanasova@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging/rtl8192u/ieee80211: fix line length exceeds 100
 columns
Message-ID: <20201027113702.GU1042@kadam>
References: <20201020151111.35848-1-eafanasova@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201020151111.35848-1-eafanasova@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 bulkscore=0
 spamscore=0 adultscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010270076
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1015 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010270076

On Tue, Oct 20, 2020 at 08:11:11AM -0700, Elena Afanasova wrote:
> Reported by checkpatch.pl.

The commit message should be considered like an separate thing from the
subject.  On my email client, I normally read either just the subject or
just the commit message.  It looks something like this:

https://lore.kernel.org/driverdev-devel/20201020151748.35937-1-eafanasova@gmail.com/T/#t

Do you see the subject?  It's far away from the commit message.

Here is how I would write this commit message:

Subject: [PATCH] Staging: rtl8192u: split up long lines

Checkpatch complains that these lines are over 100 characters so let's
split them up.

Some people care about verb tenses or whatever but most maintainers
don't.  I don't.  I only care about if I can basically see what you
are changing and why.  This patch doesn't affect runtime, but if it
did, then I would like some comments about what the bug looks like to
the user.  Basically if I can understand the commit message then it's
fine, and obviously "Reported by checkpatch.pl" is not sufficient to
understand what's going on.

regards,
dan carpenter


