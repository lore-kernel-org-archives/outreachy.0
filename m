X-GM-THRID: 6200732724667351040
X-Received: by 10.66.194.136 with SMTP id hw8mr10999445pac.39.1443765425826;
        Thu, 01 Oct 2015 22:57:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.111.231 with SMTP id il7ls498642igb.14.canary; Thu, 01 Oct
 2015 22:57:05 -0700 (PDT)
X-Received: by 10.66.124.131 with SMTP id mi3mr11867977pab.32.1443765424991;
        Thu, 01 Oct 2015 22:57:04 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id wl2si1468785pab.1.2015.10.01.22.57.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 22:57:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id lk4so96816785pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 22:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=Z8xVExB9NfaVcoiyE4cKICkOQCbU2dpOKH8bcijnpeo=;
        b=fHS0SVQ6FvWPUQO1AgZpe+YVNP5E7XfSzIl0+xru9C+Vuw6diCMMpmq+LHOpoaVsvT
         a7pIQ20Rzvl3raO66Znvt5b484ig0kZ6jWKb1yi2GCmrJzh8LNESlIH7DuyrWLFelswP
         DXtS3Jwlol8BlGF+VrCQxp31mmSSjqpe6hpwQ9Jkswub50YmiOYBzh822nKR/ksb6OgX
         dIUPdRTX1OyitsH0NVpQREhGoQ3YFfIdmMojkcuw1aZajbf5LJmKlKPIwOTzJIoA7dZ5
         axs0BnfmDxp1Gg8jyV1K1W6+ZSV6ZYyA1ocIGRRsq846Di/HhMRggsC3IO5XaRbnyt9e
         zmZg==
X-Received: by 10.66.193.162 with SMTP id hp2mr17495885pac.108.1443765424872;
        Thu, 01 Oct 2015 22:57:04 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id gj10sm10030847pbc.68.2015.10.01.22.57.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 22:57:04 -0700 (PDT)
Date: Fri, 2 Oct 2015 11:26:58 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] Staging: lustre: ptlrpc: Declare
 sptlrpc_rule_set_choose as static
In-Reply-To: <20151002054726.GE3544@sudip-pc>
Message-ID: <alpine.DEB.2.11.1510021120260.27480@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com> <1443720581-11352-5-git-send-email-shraddha.6596@gmail.com> <20151002045746.GB3544@sudip-pc> <alpine.DEB.2.11.1510021106190.27480@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
 <20151002054726.GE3544@sudip-pc>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.560E1CAF.017D,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Fri, 2 Oct 2015, Sudip Mukherjee wrote:

> On Fri, Oct 02, 2015 at 11:08:48AM +0530, Shraddha Barke wrote:
>>
>>
>> On Fri, 2 Oct 2015, Sudip Mukherjee wrote:
>>
>>> On Thu, Oct 01, 2015 at 10:59:39PM +0530, Shraddha Barke wrote:
>>>> Declare sptlrpc_rule_set_choose as static since it is accessed from this
>>>> particular file only. Also remove it's declaration from
>>>> header file
>>>>
>>>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>>>> ---
>>> This patch will not apply because of some other changes done by:
>>> d97cc6442a44 ("staging/lustre/ptlrpc: secure wrapping code cleanup")
>>
>> I'm confused as to how it applied to my staging-testing :(
>> Should I send a v2 dropping this one?
>
> Try to see if you have this commit in the tree. Try to rebase. It is not
> applying because sptlrpc_rule_set_dump() is not there in the file
> anymore.

Okay, should I send a version 2 for this series? 
>
> regards
> sudip
>

