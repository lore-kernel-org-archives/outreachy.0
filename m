X-GM-THRID: 6947867046648479744
X-Received: by 2002:aa7:88d1:0:b029:250:855b:c250 with SMTP id k17-20020aa788d10000b0290250855bc250mr3052078pff.28.1618318619259;
        Tue, 13 Apr 2021 05:56:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:2f88:: with SMTP id t8ls1651863pjd.1.gmail; Tue, 13
 Apr 2021 05:56:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxmQun6ChcZm863U8+H5/Wvva1397efWvGU9OMyceHm5f8DZk63RJgL0FWHNvHHJ/3co/RX
X-Received: by 2002:a17:90b:4005:: with SMTP id ie5mr4623899pjb.195.1618318618182;
        Tue, 13 Apr 2021 05:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618318618; cv=none;
        d=google.com; s=arc-20160816;
        b=EkzG8DO0cNDd4+VP07wbIEdb8x/d1jr5Jj7TniAytwzSH2n6yT0036VkKELTC5ZAE2
         06zhWQtTEiF4dgxd8+F9AMGmENGNJPdQqTXaKHIS9yi5Q42g40g/JBnty0GcIPKd5lSi
         Sf0J7GA6iJRqLFg2LdiFQbamUAvl2efCxn3c3r+cIgjjrNG67L+CgmALqX3UAQBfhHIR
         z+V9CRTa8bd1GYfGN6RmmfGkLPVDWVWSZt1LuwpkPAfjWX+YmXIzJhc0SEqE2sC+Puoj
         6G0DQiDhKgj05GFIjoiqLayBdSdVyHo0q5fReVNuUYUcg0xt4fckM7AgRWo+2BMF/B9r
         LK1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kdLWZIMHb3SQudb0jxNMATYyODvy77jL7zBOLEtpNVw=;
        b=TWWiESVeto9Lo0Hciit2qg89ghfeFcv8zYV5Jn1iI4B5K4yUvNxWmyPegv+ECxliWq
         /E2DL8L5Rw7VxJmJZuWrMI8rupDe0D6AFODHer9Wc6mn9UtvJzeXYK6SYOVqUKGXLKj/
         hRXfKGNnBUS0/T6L0rKMQG5LKsIWSxAYxNeNROPtuqo9a5O/wxO0vr/2B+E8/Q2rCxs6
         y1KMSiP4Yz1e3islh5MW0n7tP7AjN/sVeGf5gmv6wt1IUKkb82V06pJeIjxLfwgQ4M65
         oDMxzBQ3Sq40fUgbu6+odGsjG7Rj8O1+ggL1zgk4G4Cva/TcZpvmkFB40pARYXM1ihyG
         HwVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=z6+dZckm;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id t5si1293509pgv.4.2021.04.13.05.56.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 05:56:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=z6+dZckm;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13DCn8N7159369;
	Tue, 13 Apr 2021 12:56:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=kdLWZIMHb3SQudb0jxNMATYyODvy77jL7zBOLEtpNVw=;
 b=z6+dZckmzZhuYl2HFD91SDizhxB0Ag4v8uHgc/VNfz2EO9hiteFnxiJ5GWGu7doE5G/e
 vciQDRMQU33q4JdqbfZQ/JjDW8Vm9A7uhKW36t/61e5yptpJGaAmcqAqRs0jOd9lBbkr
 Y1YaFtQse8QRYCrfd5+m2WiOFRtKxprvIx8Ozrlz735iDyC/W+Yc4ViEav7PmJHTiiz/
 HA8xLRRi3icKLSx4kBBlFcV962z/9cqOlbG3a/ibPRcAklWtng0zuRsqj0zvspWv5c3s
 MKm+smub/NfZMfCwJZ7dPekRlztI3Aj67iLl12suN0lEpB50tzwKNveABNZZvk5yvp85 eA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 37u4nnewxb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 13 Apr 2021 12:56:55 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13DCuK55057461;
	Tue, 13 Apr 2021 12:56:54 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 37unxwtcn2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 13 Apr 2021 12:56:54 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 13DCupl1032142;
	Tue, 13 Apr 2021 12:56:51 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 13 Apr 2021 05:56:51 -0700
Date: Tue, 13 Apr 2021 15:56:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Deborah Brouwer <deborahbrouwer3563@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
        gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
        linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/4] staging: rtl8712: remove space after cast
Message-ID: <20210413125643.GD6021@kadam>
References: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
 <b1ba94644f5204505623ffc64614671aac30bbd8.1617674639.git.deborahbrouwer3563@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b1ba94644f5204505623ffc64614671aac30bbd8.1617674639.git.deborahbrouwer3563@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9952 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104130090
X-Proofpoint-ORIG-GUID: v4hqLfl9cFykEzjKPTu8wXtu5XpcM927
X-Proofpoint-GUID: v4hqLfl9cFykEzjKPTu8wXtu5XpcM927
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9952 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0
 phishscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501
 clxscore=1011 lowpriorityscore=0 spamscore=0 impostorscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104130089

This patch has already been applied, which is fine, but really all these
casts are totally pointless and should be removed.

regards,
dan carpenter


