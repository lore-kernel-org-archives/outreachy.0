X-GM-THRID: 6955401561206947840
X-Received: by 2002:aa7:8087:0:b029:28e:8174:565c with SMTP id v7-20020aa780870000b029028e8174565cmr12408847pff.12.1620140686301;
        Tue, 04 May 2021 08:04:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:df0d:: with SMTP id u13ls6575387pgg.2.gmail; Tue, 04 May
 2021 08:04:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwE8rKZ+qnIts25SohWhrKPvARBwud1OYhriYGyzPSsu8RafxllwlxejP7LZ9bWXZBcB720
X-Received: by 2002:a62:2904:0:b029:25c:13f2:47d4 with SMTP id p4-20020a6229040000b029025c13f247d4mr24282812pfp.4.1620140685118;
        Tue, 04 May 2021 08:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620140685; cv=none;
        d=google.com; s=arc-20160816;
        b=lEVv8GTg0IdrF81ODTkQaxPq07V4lFMk9Wsmn2RABUxcAC0rCqfbjaQpLSJABERjE7
         xF2KHk7JKvHZf+wTa3p9y30fwvFwjxJXcDUAT2zHZ3e/0FG8ZxvUhbBmTYP8qneYeA0Y
         dmpqx44vvFSuNV31Lkr3Qn7R2AFEpO0mo/wVHmlhRuf2c4GcdiDRPasJuqPf9vrQgFhW
         ZzHtgtDwg8g99RnZmH8wdmxg44wx9dJ+y3tu2kUPZD5T8ydwOj8xkEyA4BhZIFA3H/dv
         m0uNDSlpCfdOoeGlp8K+EeOvIvnIM4p4SFjHpyQIMp7/Qn0Lad2kI+m6uBypMbolZGyA
         a4IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KpgINEm/1wfqyGDCowX/qONC//iS169/W6cn28aAWPU=;
        b=I3tUJKhlz4DPa9fRs5OdWyumat39BZQQAdo0D1ZiWVzxXquqI1cOX6X1rWJA54gQHp
         BNr0lmwzMo0oYuVdQd7QIiqgaINJaJMgb1KNaiUuaa4k94kbPTj/faNamRfysq6PBWTb
         mVtWcXPvP5R64pCnP0uILqmXjTiePwqil3xpQ2Qgc8CTPa1UwdfGTMDWIN+gAQ719wYA
         A1BaBBM9SE02aCNm7UTBwQusGcoRZ0W4Qq8rZL8kVDXMLRHfgygeujb71FNUvkrTPXTN
         Lopv6xotJbY6sCv5w59dfLIotlJjQK9mIsR+IVq5XUh9kqaFj75IRErYaGu3aiQ1s2c+
         mPMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=LtVEvK6t;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id ep1si294974pjb.2.2021.05.04.08.04.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 08:04:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=LtVEvK6t;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 144F0RT8189745;
	Tue, 4 May 2021 15:04:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=KpgINEm/1wfqyGDCowX/qONC//iS169/W6cn28aAWPU=;
 b=LtVEvK6t51FsezexpF+QC/x481Yt8VFrWrXgWqK2fgt7Wc9Uo0yZ4UBBLWOLZEczpt8p
 4JwIfO3cwjnHzYZ4mK6c0uVEEdxi/X73Azhj9vzSpoc84z463+o7BYqQjxUhGa2elTnj
 zKWN4dTd2/CMYZuxqNSwGzQiIBUAtMdo6y+iASzgDbenqXeuwVq9gDLRzrddO3ESBK/J
 RVDR4QAvoj4KSLEmxCdNyTzmR8FrXZAg4pZJ8yATPFnUGlbd6iJHoPF2F0gDE7qI6AxA
 GEYXfSqzK4Ty2jvHdqOhXTWI6B5XqaKnaHRAlehYO9B8c2d86olMY1g1XpWaFYx0xuwV EQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 388xxmy9ah-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 04 May 2021 15:04:42 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 144EpdE8146353;
	Tue, 4 May 2021 15:04:41 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by userp3020.oracle.com with ESMTP id 389grs4sb9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 04 May 2021 15:04:41 +0000
Received: from userp3020.oracle.com (userp3020.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 144F4e7L013474;
	Tue, 4 May 2021 15:04:40 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3020.oracle.com with ESMTP id 389grs4sak-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 04 May 2021 15:04:40 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 144F4aLt001757;
	Tue, 4 May 2021 15:04:37 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 04 May 2021 15:04:35 +0000
Date: Tue, 4 May 2021 18:04:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
        David Kershner <david.kershner@unisys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        sparmaintainer@unisys.com, linux-staging@lists.linux.dev,
        linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
        Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v8] staging: unisys: visorhba: Convert module from IDR to
 XArray
Message-ID: <20210504150428.GX1981@kadam>
References: <20210504150125.18373-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210504150125.18373-1-fmdefrancesco@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-GUID: ucU6gMzDlP5M7UiyO2ZWgbYblVFjp_rX
X-Proofpoint-ORIG-GUID: ucU6gMzDlP5M7UiyO2ZWgbYblVFjp_rX
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9974 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 spamscore=0
 suspectscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 impostorscore=0 mlxscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2105040111

On Tue, May 04, 2021 at 05:01:25PM +0200, Fabio M. De Francesco wrote:
> Converted visorhba from IDR to XArray. The abstract data type XArray is
> more memory-efficient, parallelizable and cache friendly. It takes
> advantage of RCU to perform lookups without locking. Furthermore, IDR is
> deprecated because XArray has a better (cleaner and more consistent)
> API.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>

Thanks!  Looks good to me.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter


