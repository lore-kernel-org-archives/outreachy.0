X-GM-THRID: 6200732724667351040
X-Received: by 10.182.56.70 with SMTP id y6mr10235866obp.17.1443764340583;
        Thu, 01 Oct 2015 22:39:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.179 with SMTP id n48ls1396429qgn.82.gmail; Thu, 01 Oct
 2015 22:38:59 -0700 (PDT)
X-Received: by 10.129.109.211 with SMTP id i202mr11168028ywc.16.1443764339954;
        Thu, 01 Oct 2015 22:38:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id wl2si1461302pab.1.2015.10.01.22.38.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 22:38:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id ex6so97216889pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 22:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=GxgC6kHodJtQ5hHAGAZ7GKNcNpEG5mnRrY7n2Pn5ico=;
        b=VPewxzqOuAW0EkEWz0bWBag6IahMyAHnHhJfI9Nf3RwHqsW7sY1WFlcTTiQr8womgq
         XNKSud37d24XmwtIA+CwAp8sWAZTk3gx8aMS/bSJCpGMzXuyZf9NDTrR0SJbKMaHHhAw
         7sWSmAfIDPbDXg+y9FyZ5tneFJ9e+h8fQaj9FQMWI+/KWnc2T48gzv9LhfKIQv8JYMDL
         XPBoC/HR4fAKdtYjBwZkBdSvtyqCnewdqE4RhrPyZTlSkmOL8W1jlwFXSG6eZm2gAuQM
         bbmQ1n34mYz1KAAAagVRHdVhEnPh1aYEuaoYMIPhP3bhAYXLk8zFfuW16wcN4WaAO1W5
         lGpQ==
X-Received: by 10.68.173.130 with SMTP id bk2mr17586594pbc.169.1443764339806;
        Thu, 01 Oct 2015 22:38:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id zn9sm10002650pac.48.2015.10.01.22.38.56
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 22:38:58 -0700 (PDT)
Date: Fri, 2 Oct 2015 11:08:48 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] Staging: lustre: ptlrpc: Declare
 sptlrpc_rule_set_choose as static
In-Reply-To: <20151002045746.GB3544@sudip-pc>
Message-ID: <alpine.DEB.2.11.1510021106190.27480@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com> <1443720581-11352-5-git-send-email-shraddha.6596@gmail.com> <20151002045746.GB3544@sudip-pc>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.560E1872.00F8,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Fri, 2 Oct 2015, Sudip Mukherjee wrote:

> On Thu, Oct 01, 2015 at 10:59:39PM +0530, Shraddha Barke wrote:
>> Declare sptlrpc_rule_set_choose as static since it is accessed from this
>> particular file only. Also remove it's declaration from
>> header file
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
> This patch will not apply because of some other changes done by:
> d97cc6442a44 ("staging/lustre/ptlrpc: secure wrapping code cleanup")

I'm confused as to how it applied to my staging-testing :(
Should I send a v2 dropping this one?

Thanks,

Shraddha
>
> regards
> sudip
>

