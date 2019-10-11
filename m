X-GM-THRID: 6746442134706978816
X-Received: by 2002:a17:90a:ba8d:: with SMTP id t13mr16900823pjr.129.1570791639048;
        Fri, 11 Oct 2019 04:00:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8dc2:: with SMTP id j2ls2011229pfr.8.gmail; Fri, 11 Oct
 2019 04:00:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyFnZqGMOQbk6dtn5nxFwEOnv9UpX/T2aul4ACliJdSBs8DAMi9REY8QxP1cL0G8ntHSX5K
X-Received: by 2002:a62:1953:: with SMTP id 80mr16199739pfz.173.1570791638214;
        Fri, 11 Oct 2019 04:00:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570791638; cv=none;
        d=google.com; s=arc-20160816;
        b=zfuRgH4egae4Xik9qHBIf1EPhljRvPL/UmEsiSVBdWcqHFl2254Yx4uSVRNko46JBp
         kR0CYtcltXNcPTvs3IQXj0gEhxXTJ3bEXyWk4Te8ujiGh5iZ4RCPXQFyQ7zWVRHpB1CZ
         e+qKw91eMEL7TQ1YOzVhcKiR9kq3tB1KVdrnlri9HZR3JbeybP9opL8C5Un/KYFYO4C+
         JJm+UEYER1C9oSO9ImF4MqEWJNvQ6fkNvkj9VZJdm5wpSSORk0KEw3HTdP1+AN51D/dh
         2iTHE5qk3sdZFa0hoH7v3Bv+NefWv+F6O6w1WEpga57ZGOSsjKAw2Bg3vTDfNQ7Es5Pu
         X1sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RU6H+u3W39wz6yAaxIiIbW2yjZ/yh1LsvlPU+bZjROg=;
        b=lLyayAran5aYVox2btdMLXCO5sPlcgMShxs5sioz6QErrbb1wsS7VnxUcxISe6KaFL
         zICF9ZFDDl/DvV1m43jclkxUhaf0/tYtJOGxkzcyHp9vBxgSuUc7qlHsgy2Bcz9CYGHN
         69Kws+2ZfYSFd7UwiAhTMgcyzhqEegHgld/sI+3ek8D5o9q5IktcT6Nnv9QwRqB31av4
         qMNBmMBeuA+Iuwpg+U9r4zzqYPRI/slWJ63UpRUehsLrpNMj+OI2rhPD2NhBBqp1ee9z
         xBITg0zW6rETiThkNjm0Lhc24od16gTqroFSBVUXYvNNZNGN9I6ap84VQ6T/7WVq4cSb
         D03A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=MuWL7oGH;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id d5si889768pls.5.2019.10.11.04.00.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 04:00:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=MuWL7oGH;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BAwqRu041513;
	Fri, 11 Oct 2019 11:00:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=RU6H+u3W39wz6yAaxIiIbW2yjZ/yh1LsvlPU+bZjROg=;
 b=MuWL7oGHEXrLsuUyyIEUiZNUPGnntbBNgjYDTnj+opzbl0ww0EbjHrQFZ7N47eJ140UB
 k4kWd7wZxq/9oU5RlavY/dSNVB+REVwZ1sA4+jc2MViCFEBdRU8aOYlk5PIg8Zd8yuY9
 UvrlvUuNmXgkyZyYcgCAQNGXRcVvli0dBrvZZhaAY60r3pNhINV4siUy1EACmSRwxFRt
 FibTfKtoIrRf6pZpC2O7M9OQKUu6PyVJaX30S18uVBpFGTk5ZldsL2ZeSHln4ovh7viT
 L7n+/qhxdMurKJocp48sgz9+juQnx4lLUA7ULMxDM06i4a78le22hOCBhBvykLl5iuK2 mg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 2vekts0m1y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Oct 2019 11:00:35 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BAxSAo171121;
	Fri, 11 Oct 2019 11:00:34 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3030.oracle.com with ESMTP id 2vjdykryvq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Oct 2019 11:00:34 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9BB0RDr004965;
	Fri, 11 Oct 2019 11:00:27 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 11 Oct 2019 11:00:26 +0000
Date: Fri, 11 Oct 2019 14:00:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wambui Karuga <wambui.karugax@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
        isdn@linux-pingi.de, gregkh@linuxfoundation.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] staging: isdn: remove assignment in if conditionals
Message-ID: <20191011110019.GC4774@kadam>
References: <20191011072044.7022-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191011072044.7022-1-wambui.karugax@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=750
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110105
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=832 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910110105

This ISDN stuff is going to be deleted soon.  Just leave it as is.

regards,
dan carpenter


