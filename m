X-GM-THRID: 6745898329157140480
X-Received: by 2002:ab0:4ad7:: with SMTP id t23mr2753151uae.114.1570698566799;
        Thu, 10 Oct 2019 02:09:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:6181:: with SMTP id h1ls169108uan.7.gmail; Thu, 10 Oct
 2019 02:09:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxmT8vyo1ZnWA9b8yIBSn1LMQ8Mpxt3A4k/pMkB+Lp3caRa7agWSrx6kLWijwV5SgOf+LTp
X-Received: by 2002:ab0:348c:: with SMTP id c12mr2975112uar.100.1570698565738;
        Thu, 10 Oct 2019 02:09:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570698565; cv=none;
        d=google.com; s=arc-20160816;
        b=Tx6mgzMG93qE7FwTQdJFzwa0Q11DKSyXzR2CFTqY+KfdavFOV6Lcz9Howfeo5U5w2n
         yoSAok6AG6l+R1bbZ/1a7wVFkpiEnAvqqSQE+Zu/IaLCtowqvhGwtZiA7J3epS+Yq4+W
         uFA1OVpOvNS6bw+aSnRuNMVNGNxh1VI/sv/1ZZgccdOyt/FjGym+yRjM+RejOGBiQIhP
         7GWW/IZcUqpKCCEZY++XGUNy0AKR2cfEXFHlbwW18D7AQHGgwPB3PSySOP/6cnmnStCm
         qToZWKHuJ8nr9QbMCpiT6WTsy+29ZTOx3NMSdis3URLmogneFY1aFoAHsmK/QEFrtykx
         KVdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Vx8uYnGXTh91J18N/6j4HjOFlm/NiKRQjZRhmX7eqBk=;
        b=emPp+H3avtGKeQ7FFWCnxvE30/GmeZ+P+vj7Ub2aW7btbJu8Yz3Hbq45K3mD4QuqoD
         4+JdIJkvDdz+pXgzzbbTNbclnz9RtDkMq3f9mPI6jL7IXCtIOJh8QNtM6gN1nhyPZUeS
         GpeMHmIUT8wAIMZoR5dFSVOayA5sIdgWPO9JG3dBo3ohqb48DVXRkDynKVt1jzJ1S4gL
         QK+7bcI5ebm5rovDbOGKFucEGM1Aa/7C3TZYQhZjAhd3O5OXMNG4bI90zYqkVluW1mvg
         bU0clztPWdqh99zrB3n0l/315gFR9wfwddWWbQz3LQXBoqKVzKCozHHMCYg/61sDDlRC
         GBWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=XtWytnr1;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id 136si398625vkx.4.2019.10.10.02.09.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Oct 2019 02:09:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=XtWytnr1;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A99McG157524;
	Thu, 10 Oct 2019 09:09:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=Vx8uYnGXTh91J18N/6j4HjOFlm/NiKRQjZRhmX7eqBk=;
 b=XtWytnr1cBD8tC4+0Vk6zmyPiXy4cfUj9iUfPR+dv8WTt4Ozhmd7b4m4HyA6FpvzFGNZ
 4ZCeb8bsPdcOpt+ROqKYdmwnCbbyJZZRIGE4balJUESUV85nVZD1ZpEsNzLT2mC5IuQN
 vN+WFajihlVxMEzXNxLwK9JyVLiZrLWKnYMHMjM8WrNf9bkHPSpszSYRbpb2nq+XWKMp
 6A6HG5zJlxp78Bt1WtDmQ0GPeIsdpVxut8vs0PStxnfBRv7wTC31gSsHNZGgYwHRMs8X
 7pP14Tu73h32OBDYpomU954HvJ7upMSeS/4oAjET38eMCX+Aq0jYctT6cT8FSe34jTES 7w== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2120.oracle.com with ESMTP id 2vek4qsu4q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Oct 2019 09:09:22 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A98CoQ051485;
	Thu, 10 Oct 2019 09:09:19 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 2vh8k2fwx6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Oct 2019 09:09:19 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9A99HRU014129;
	Thu, 10 Oct 2019 09:09:17 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 10 Oct 2019 02:09:16 -0700
Date: Thu, 10 Oct 2019 12:09:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, Jules Irenge <jbi.octave@gmail.com>,
        devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
        netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: qlge: Fix multiple
 assignments warning by splitting the assignement into two each
Message-ID: <20191010090906.GF20470@kadam>
References: <20191009204311.7988-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910092248170.2570@hadrien>
 <f9bdcaeccc9dd131f28a64f4b19136d1c92a27e2.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f9bdcaeccc9dd131f28a64f4b19136d1c92a27e2.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910100083
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1031
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910100083

I was just about to give a newbie a Reviewed-by cookie until I saw it
was a Joe Perches patch without a commit message or a sign off.  And
then I was annoyed that I had invested any time in it at all.  I even
dropped out of my email client for this!

:P

If you want to resend as a proper commit then you can still have my
Reviewed-by I guess.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter


