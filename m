X-GM-THRID: 6807662174396219392
X-Received: by 2002:a17:902:b617:: with SMTP id b23mr28416353pls.285.1585071078890;
        Tue, 24 Mar 2020 10:31:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:34cb:: with SMTP id b194ls6444542pga.1.gmail; Tue, 24
 Mar 2020 10:31:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuouGXj9A4NUwS9Ydk7GS13TBd2Deyh5vzq8HjqcNBO3iD4iIlPiqyxVaiFnUlw4eHkzqq6
X-Received: by 2002:a63:70e:: with SMTP id 14mr8232782pgh.290.1585071077064;
        Tue, 24 Mar 2020 10:31:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585071077; cv=none;
        d=google.com; s=arc-20160816;
        b=Lc/DaMa0XGLZfTCRAc0llwiDcQ/Drq3zlzgwwgyTwI2PQygS5CsGa6mFiUIcxhraPu
         ii1/8G8AccIYe7RNJZkf29M9P7cd5bf5NbbiWsfdOO92PNe2T/ispt0DAr4JiCgGVxjY
         lKHmQbsA6kw1GIeTheGUbo/FceHVY73fDUK9PaL3LF6p5l6HMpvRgUudyC9KS4ultg7Z
         06wOY+Ik0oXEsuLuSYRtuUSP40BPvgH3SSBW17D5Gv8q8U4BD+UNN2MIKrxISSoSqHz4
         GImdrzONWLrW3xk0xewNRlLf8mlU2R+OonZmv1CncST7D92p7ZK1ayIAxTad6RPt//5N
         rzaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wIeRi4ao8R5b/EkoPra/HUsoNLDCY4TwY0SR/Vhrc+0=;
        b=nzfgovDlquGwtM+Giycwce1y7RvmJfa0EnYjzTR8vn5mtKpfajMqJ+RNfQ9CJItSxE
         KbLt5ek9j/XoBAviQxib1CGYuDTxuN6dGzZwM5x1gmJq/+kzdz20XBfXwZBFtx3Jw3Jz
         XsVbW9nSFQzs5kA9LKF0TP6FZu9aAtrRRujnA/M2gZyMY7yO4P5U44sEUKMfSN+cPhlw
         4BEp4DBdehr1iCLezCXEhIJSPKVmaXUUTa/8xoDIvce1168ui9DssXakWop45svW66wB
         WgsEl1spfT9o2Y5YnMHYbXA00Nx+CgLb2Oqjy7tHCYE0vSKKdrus5p1G/w13gEGo9ZoT
         ambg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=c5Q4svt2;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id j44si145453pje.0.2020.03.24.10.31.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 10:31:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=c5Q4svt2;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02OHEvCk005056;
	Tue, 24 Mar 2020 17:31:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=wIeRi4ao8R5b/EkoPra/HUsoNLDCY4TwY0SR/Vhrc+0=;
 b=c5Q4svt25cC7qi2Iw+EfmWqN5wZPEMEtLNnFz28V0tf5c4+wbt4wMrflyu/zY4vMTQyl
 5t86WanbVUQe/wg8moPrvNrmj5amiVxmKvB7a7QsvwT5tijnnJoS1PJAoStyqNQYwl0v
 3u6oVIbp3jc/z5VZjopTnV1giOnD0Oy+Y+aRS8mqZO4TyympOCKfjFCXeoIu5AJh4pfk
 HvkjqMISeQyP1PPtv/tfANcypyjxyU7P8cc4jAJ7Yb6+YIBVQm+J7KegZBPaO0pfJGfo
 89riBNdBo/PkJ69auZQ1sxSJsMULa4kzTOI/VKherv5Xo6eS561PMns8DZK2bZdETUBg uw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 2yx8ac2ng1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 24 Mar 2020 17:31:06 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02OHJsXd076303;
	Tue, 24 Mar 2020 17:29:05 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3030.oracle.com with ESMTP id 2yxw931bkw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 24 Mar 2020 17:29:05 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02OHT2qd012403;
	Tue, 24 Mar 2020 17:29:02 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 24 Mar 2020 10:29:01 -0700
Date: Tue, 24 Mar 2020 20:28:50 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
        Forest Bond <forest@alittletooquiet.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
        Colin Ian King <colin.king@canonical.com>,
        Malcolm Priestley <tvboxspy@gmail.com>,
        Oscar Carter <oscar.carter@gmx.com>, devel@driverdev.osuosl.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] staging: vt6656: change function from always
 returning 0 to void
Message-ID: <20200324172850.GG26299@kadam>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200324064545.1832227-1-jbwyatt4@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9570 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0 bulkscore=0
 adultscore=0 mlxscore=0 malwarescore=0 mlxlogscore=937 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003240089
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9570 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 mlxscore=0 adultscore=0 phishscore=0 impostorscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003240089

Fold these two patches together so its just one patch.

regards,
dan carpenter


