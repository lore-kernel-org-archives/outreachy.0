X-GM-THRID: 6200732724667351040
X-Received: by 10.66.100.170 with SMTP id ez10mr134328pab.16.1443767475197;
        Thu, 01 Oct 2015 23:31:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.231 with SMTP id c100ls873039ioj.109.gmail; Thu, 01
 Oct 2015 23:31:14 -0700 (PDT)
X-Received: by 10.50.122.2 with SMTP id lo2mr2406524igb.2.1443767474289;
        Thu, 01 Oct 2015 23:31:14 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id el2si1469414pbb.0.2015.10.01.23.31.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 23:31:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pablk4 with SMTP id lk4so97627987pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 23:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=v4HhT+JmTnlYxK5NbS6ILxIzpTiVrUhgs6G5aBVw6ao=;
        b=UovzUdm4zdvaMzbFt3Bxd1zBR+zZLXfaN3uf9qviH/Fn6lPdj5gwmHqNd8k8xp+iJC
         OFD6wapWPvGo8nmpurCraBRUJAIqmo9pBu+tFg85n4NibSmYuzNh5lk4kvwf4yI6ob5r
         Du953DFzjw/DejiN4fOZVqvgIBiDjsm3SajluwZAkNgTbUFnPhRU+Ds7F75trffj1/Rl
         2U/IzqjYitwAYAN15bdeG6niAplU07YKelEJ1RChct/rhxWg5cIwMsoG0CZKSYvhnife
         zmEJr5JY7+G27BH5FLu8SLOcN0rniBPIak+hpBwVflHwqjJoIG0Z5K01nmriZlwDhpel
         eMlg==
X-Received: by 10.68.205.231 with SMTP id lj7mr17759923pbc.36.1443767474152;
        Thu, 01 Oct 2015 23:31:14 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id ct2sm10224159pbc.34.2015.10.01.23.31.12
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 01 Oct 2015 23:31:13 -0700 (PDT)
Date: Fri, 2 Oct 2015 12:01:09 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] Staging: lustre: ptlrpc: Declare
 sptlrpc_rule_set_choose as static
Message-ID: <20151002063108.GG3544@sudip-pc>
References: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>
 <1443720581-11352-5-git-send-email-shraddha.6596@gmail.com>
 <20151002045746.GB3544@sudip-pc>
 <alpine.DEB.2.11.1510021106190.27480@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
 <20151002054726.GE3544@sudip-pc>
 <alpine.DEB.2.11.1510021120260.27480@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.11.1510021120260.27480@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 02, 2015 at 11:26:58AM +0530, Shraddha Barke wrote:
> 
> 
> On Fri, 2 Oct 2015, Sudip Mukherjee wrote:
> 
> >On Fri, Oct 02, 2015 at 11:08:48AM +0530, Shraddha Barke wrote:
> >>
> >>
> >>On Fri, 2 Oct 2015, Sudip Mukherjee wrote:
> >>
> >>>On Thu, Oct 01, 2015 at 10:59:39PM +0530, Shraddha Barke wrote:
> >>>>Declare sptlrpc_rule_set_choose as static since it is accessed from this
> >>>>particular file only. Also remove it's declaration from
> >>>>header file
> >>>>
> >>>>Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> >>>>---
> >>>This patch will not apply because of some other changes done by:
> >>>d97cc6442a44 ("staging/lustre/ptlrpc: secure wrapping code cleanup")
> >>
> >>I'm confused as to how it applied to my staging-testing :(
> >>Should I send a v2 dropping this one?
> >
> >Try to see if you have this commit in the tree. Try to rebase. It is not
> >applying because sptlrpc_rule_set_dump() is not there in the file
> >anymore.
> 
> Okay, should I send a version 2 for this series?
Yes, please.

regards
sudip

