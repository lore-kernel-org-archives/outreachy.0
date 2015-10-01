X-GM-THRID: 6200616774953598976
X-Received: by 10.182.89.129 with SMTP id bo1mr7761082obb.4.1443701378966;
        Thu, 01 Oct 2015 05:09:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.42 with SMTP id 39ls878228qgo.70.gmail; Thu, 01 Oct
 2015 05:09:37 -0700 (PDT)
X-Received: by 10.140.232.212 with SMTP id d203mr7925914qhc.8.1443701377172;
        Thu, 01 Oct 2015 05:09:37 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id pe1si814236pac.2.2015.10.01.05.09.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 05:09:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ex6so73324141pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 05:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=F+1c3cnOI13rStYOF3u7m8SrU954fiAS5wwRGrcHJUo=;
        b=ckXZ5b7fLJ2DZ9NlyLhnqZa4nkT7eUlm6xN6Nf7YBYi1KGKR/R4PcSkmtECR9iwk3G
         eJ/H6GgQ0zXsmXX9ea1Iwht+AAehg8DxTNla0Bl+RH8O+lfd0JAAvEQo9xV6oKnnfy+r
         A7FP/+xDFTkElhmdnMRrzmWnRaAFwOnK3jyie2gWDVqzO1r7TZBxFno9zeMz+ZIYZiqB
         1+IdXE/teN6KwBEzMizl1mZ6gi5lcSu0y8rKy0DwvSJv9VW9U6kg8YtIFIzZ2Li0JDRg
         aJ2Nb0k9tc7DsegqzSSkN3um1Wkct+DnCM7Gn9qpLBDhRmRam4JkVB3oVseqczGWG1X5
         VzdA==
X-Received: by 10.68.95.3 with SMTP id dg3mr11871476pbb.35.1443701377002;
        Thu, 01 Oct 2015 05:09:37 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ql7sm6378955pbc.45.2015.10.01.05.09.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 05:09:36 -0700 (PDT)
Date: Thu, 1 Oct 2015 17:39:26 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Remove
 unused code
In-Reply-To: <20151001115749.GB10220@sudip-pc>
Message-ID: <alpine.DEB.2.11.1510011738540.9108@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443693764-10810-1-git-send-email-shraddha.6596@gmail.com> <20151001115749.GB10220@sudip-pc>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.560D227F.017C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Thu, 1 Oct 2015, Sudip Mukherjee wrote:

> On Thu, Oct 01, 2015 at 03:32:44PM +0530, Shraddha Barke wrote:
>> Discard the functions as they are not used anywhere throughout the
>> kernel
>>
>> Problem found using sparse.
>>
> This also has been done by:
> 709e280afae5 ("staging/lustre: Remove unused lu_object functions.").
>
> Which tree you are using?

My bad. I was working against staging-next. Now I'm using staging-testing.
>
> regards
> sudip
>

