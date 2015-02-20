X-GM-THRID: 1080518770688
X-Received: by 10.236.227.162 with SMTP id d32mr9296444yhq.7.1424419346532;
        Fri, 20 Feb 2015 00:02:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.80 with SMTP id f77ls771205iod.39.gmail; Fri, 20 Feb
 2015 00:02:26 -0800 (PST)
X-Received: by 10.70.126.138 with SMTP id my10mr8301336pdb.1.1424419346323;
        Fri, 20 Feb 2015 00:02:26 -0800 (PST)
Return-Path: <preeti@linux.vnet.ibm.com>
Received: from e8.ny.us.ibm.com (e8.ny.us.ibm.com. [32.97.182.138])
        by gmr-mx.google.com with ESMTPS id ba9si5124276qcb.0.2015.02.20.00.02.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 00:02:26 -0800 (PST)
Received-SPF: none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) client-ip=32.97.182.138;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) smtp.mail=preeti@linux.vnet.ibm.com
Received: from /spool/local
	by e8.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <outreachy-kernel@googlegroups.com> from <preeti@linux.vnet.ibm.com>;
	Fri, 20 Feb 2015 03:02:25 -0500
Received: from d01dlp01.pok.ibm.com (9.56.250.166)
	by e8.ny.us.ibm.com (192.168.1.108) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	Fri, 20 Feb 2015 03:02:24 -0500
Received: from b01cxnp22033.gho.pok.ibm.com (b01cxnp22033.gho.pok.ibm.com [9.57.198.23])
	by d01dlp01.pok.ibm.com (Postfix) with ESMTP id 0011438C8039
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 03:01:06 -0500 (EST)
Received: from d01av03.pok.ibm.com (d01av03.pok.ibm.com [9.56.224.217])
	by b01cxnp22033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id t1K82Npw23986262
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 08:02:23 GMT
Received: from d01av03.pok.ibm.com (localhost [127.0.0.1])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id t1K82Ncx009952
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 03:02:23 -0500
Received: from preeti.in.ibm.com ([9.77.198.76])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVin) with ESMTP id t1K82GY6009401;
	Fri, 20 Feb 2015 03:02:19 -0500
Message-ID: <54E6EA07.2020603@linux.vnet.ibm.com>
Date: Fri, 20 Feb 2015 13:32:15 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Vaishali Thakkar <vthakkar1994@gmail.com>
CC: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] Staging: rtl8723au: Use put_unaligned_le16
References: <cover.1424402536.git.vthakkar1994@gmail.com> <9defe79e0f212c883f260e27a67bff9f9ba013ba.1424402536.git.vthakkar1994@gmail.com> <alpine.DEB.2.02.1502200816570.2045@localhost6.localdomain6> <CAK-LDbKo2E2gua_=z+5ibpnY-Qf3qnzaJZLW6AdG_KekBH9BZQ@mail.gmail.com> <54E6E471.8090107@linux.vnet.ibm.com> <CAK-LDbL70HbEiDNmE3A499dAvxP7JteJB9nvmEs_tMRePggT_g@mail.gmail.com>
In-Reply-To: <CAK-LDbL70HbEiDNmE3A499dAvxP7JteJB9nvmEs_tMRePggT_g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-TM-AS-MML: disable
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 15022008-0029-0000-0000-0000020D69A9

On 02/20/2015 01:20 PM, Vaishali Thakkar wrote:
>>
>> Yes I would suggest that. I missed this. Additionally I would recommend
>> in this case to not prefix any version number to the cover letter.
>> Instead prefix the appropriate version numbers to the individual patches
>> mentioning the changes from the previous versions.
> 
> Ok. So, in next patch-series cover letter will not have any version number and
> both of these patches will have v4 as I already prefixed them as v3.
> And for this
> particular patch I should write that there is no v2 under signed off
> by line. Right??

1. No version number for the cover letter.
2. Retain [PATCH v3 1/2] Staging: rtl8188eu: Use put_unaligned_le16 as
v3 itself.
3. Change [PATCH v3 2/2] Staging: rtl8723au: Use put_unaligned_le16: to
v2. So it would be:
[PATCH v2 2/2] Staging: rtl8723au: Use put_unaligned_le16, since it has
undergone just one revision.

The reason I ask not to change the version numbers again is because
there is nothing that has significantly changed from the previous
versions. There will be a change only in the manner of sending patches.

So now the question is about how you indicate to the maintainer that the
fresh series that you will post now is the one to be picked up. Usually
under such circumstances we append RESEND to the patches.
So now you can resend the next version as mentioned in the points above
but with a RESEND tag to the cover letter and patches.

Something like: [RESEND PATCH 0/2] Staging: Use put_unaligned_le16.
The maintainer will thus know that this is the one to be picked up.

Regards
Preeti U Murthy


> 
>> Regards
>> Preeti U Murthy


