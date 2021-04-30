X-GM-THRID: 6956886688242073600
X-Received: by 2002:a05:622a:134b:: with SMTP id w11mr4133383qtk.40.1619782980713;
        Fri, 30 Apr 2021 04:43:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:74cb:: with SMTP id j11ls2599752qtr.2.gmail; Fri, 30 Apr
 2021 04:42:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy9RYJi9yMMRhJwXWZ1iQjfLqV6GGMK/XNh7mJLD0BpyCH7P3Dex5CMpSE/Gbw9TTPdmI60
X-Received: by 2002:ac8:4f45:: with SMTP id i5mr3856248qtw.305.1619782979703;
        Fri, 30 Apr 2021 04:42:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619782979; cv=none;
        d=google.com; s=arc-20160816;
        b=Ou3l1aTgTdXf4izyyKiKhDp8wkBRlwYjALTI0xKLVBxPZD9j2YA/RVumY9iFr7LLU7
         YF+4f4bng9DHjCKYXCflPitmbqcjrCoRkGlwTtR2qpr8LDKyfNj2MtyxCJPFJJmK0Fqp
         3QJITORII9+CGmC9GJoRqot2H5vQPE+qKf9QcsyDdYOG7VyrPe3Zdv1XT9zuAzCVRUYL
         9ukE+7+iBAwLFjTfevxoj6FlvTZdM0hYC6c1EQVPEaTICQNhGQ4aevitkWAlb2ZjAUxP
         yi1JeWSExK+LR4z+Fd+4jk3bcpO8F8EuLEJAWjm0uALkIlY2+Ej91UcKpT5kA75SdMOm
         SUfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=q2xPT9aYNv3n8ZfbCyQkPK3lG0v/KfOw17OG2y43ouA=;
        b=iyVexMpocbVVjcahG5PLeSwuT2wwWmCRKV8TViyKZCIogeN/qZEYSfsUC3Hng3stDa
         9Mkp2aU9O4qTQnz2rK2nA3u+ac7yWtihs9xHqtKaNSuUaklp/dL7UCZ35hBatX7kW0Ln
         GKVfkRqriIdndubV6VkaVA3laSij/I7ymk9qWdgmk+pxpW7vz39xu3i/RzJpX0Qh2+ZF
         8fOSKzAquFuqfxxmEBCaFm2wPmuIstH3nIsUG+RdYpKIFE43pYjVFDH5oZPKqfwG6sJ8
         R+4FmhmSmVN/86TvEBAk9bTz3OX8s0cv/1vOMLowaka4vCS1OEDdyroiZTGsj/Py/MgH
         gB+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=ck81vHbw;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id t65si99916qke.7.2021.04.30.04.42.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Apr 2021 04:42:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=ck81vHbw;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13UBe3xB180347;
	Fri, 30 Apr 2021 11:42:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=q2xPT9aYNv3n8ZfbCyQkPK3lG0v/KfOw17OG2y43ouA=;
 b=ck81vHbwT+kff9rhvQxC8WfN0IuhY8ecu+MlA/uIllxtfrX1rskcEhCMY3Z2UVXXHfdX
 FtnqPQgrgCxUrptSWVpe2MiNOi8tKbZ9GABCONUvQv1aGCEZ4TZ+39W5VdGpMORCBo5f
 I99hYDFuvgayYoIdl05ZTUBrmqiie66uIX/UR3jSfXos0Vl2TI/hetDVGozBtmfmC8Yy
 xlr4tSKJSpiinPzzVrdks/S4Y6xWBBn04pE6BbHNNw6dh/l1Dzu94TLMgeawr1UQYKUv
 /5VcYs0Ag3SVPDhXPZiVjNFzTDgQcC33I+/QW7AKsfDMdVOh/Lfa8l5gw5pEQtfA6mbC eg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2120.oracle.com with ESMTP id 385ahbydpj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 30 Apr 2021 11:42:58 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13UBexpU108326;
	Fri, 30 Apr 2021 11:42:57 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by aserp3030.oracle.com with ESMTP id 3874d4ujk2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 30 Apr 2021 11:42:57 +0000
Received: from aserp3030.oracle.com (aserp3030.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 13UBfSF3109448;
	Fri, 30 Apr 2021 11:42:57 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 3874d4ujjp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 30 Apr 2021 11:42:57 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 13UBgtDo010320;
	Fri, 30 Apr 2021 11:42:56 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 30 Apr 2021 11:42:55 +0000
Date: Fri, 30 Apr 2021 14:42:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 0/2] Remove set but unused variables
Message-ID: <20210430114248.GG1981@kadam>
References: <20210430095319.23226-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210430095319.23226-1-fmdefrancesco@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-GUID: 7jt3cVUlJhaSTyRYOjhOLylwtiAP5GYz
X-Proofpoint-ORIG-GUID: 7jt3cVUlJhaSTyRYOjhOLylwtiAP5GYz
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9969 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 mlxlogscore=999
 priorityscore=1501 clxscore=1031 adultscore=0 suspectscore=0 spamscore=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104300085

Thanks!

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter


