X-GM-THRID: 6200732724667351040
X-Received: by 10.129.116.133 with SMTP id p127mr5174301ywc.50.1443761873555;
        Thu, 01 Oct 2015 21:57:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.40 with SMTP id jd8ls469184igb.5.gmail; Thu, 01 Oct
 2015 21:57:52 -0700 (PDT)
X-Received: by 10.50.32.74 with SMTP id g10mr2196358igi.0.1443761872974;
        Thu, 01 Oct 2015 21:57:52 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pe1si1323197pac.2.2015.10.01.21.57.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 21:57:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id lk4so95495007pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 21:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=VrwePcLbMeGBe1NYm+xPqIGp96D+YiL2pKn9SF5g5hI=;
        b=VYMw3aTpdjbHLplV89O8qdSdbRQGKZEI/FXYqeKSoi8VOUPv0QmO9mw9weSvIu8eOI
         v6kvrEEvzvYKOIEHV6lgTDyofT1QpJKiZTFmSQjMS4IWGNgGBqzk8iXi01mYPs7rvMRR
         XUovZVOwuD1OdgJmIU0ktjnNjB/blGOAf2w4GlCEb0jUznVmI5K9mW7QIWwV5UydEWti
         AejzoNYBfhSoYxno1J65QNTjPzi/RrVzEp+crnTePilLkVc8bcFzTMWSiXFL0vn8KwVJ
         j+9HcAn5vmoTU4cHQ5IkqCDIMqbrAKknNYQlp4fpRuFAq4yCZuEbxUlTz/6l/VkKJmOE
         jsmw==
X-Received: by 10.66.146.69 with SMTP id ta5mr17583054pab.46.1443761872818;
        Thu, 01 Oct 2015 21:57:52 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id d2sm9843112pat.24.2015.10.01.21.57.50
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 01 Oct 2015 21:57:52 -0700 (PDT)
Date: Fri, 2 Oct 2015 10:27:46 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] Staging: lustre: ptlrpc: Declare
 sptlrpc_rule_set_choose as static
Message-ID: <20151002045746.GB3544@sudip-pc>
References: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>
 <1443720581-11352-5-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443720581-11352-5-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 01, 2015 at 10:59:39PM +0530, Shraddha Barke wrote:
> Declare sptlrpc_rule_set_choose as static since it is accessed from this
> particular file only. Also remove it's declaration from
> header file
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
This patch will not apply because of some other changes done by:
d97cc6442a44 ("staging/lustre/ptlrpc: secure wrapping code cleanup")

regards
sudip

