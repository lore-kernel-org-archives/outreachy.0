X-GM-THRID: 6204202017564393472
X-Received: by 10.182.46.196 with SMTP id x4mr18506178obm.22.1444528349140;
        Sat, 10 Oct 2015 18:52:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.136.196 with SMTP id qc4ls844483igb.25.gmail; Sat, 10 Oct
 2015 18:52:28 -0700 (PDT)
X-Received: by 10.66.146.131 with SMTP id tc3mr18375328pab.20.1444528348670;
        Sat, 10 Oct 2015 18:52:28 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id w5si922948pbt.1.2015.10.10.18.52.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 18:52:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id hy16so121150538pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 18:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=J+X7lQ2aM1DM1nuhxnLHmpaBvkWmhOKNNQiyTmsPa7M=;
        b=1CU7Jj0yxaud9KOKg/87vNeMR7v6WWfp/gbotadn7SqO7vGIDzXr2OQCy7vV0ghnvp
         XfaUX20KUlKGt3WWr8toFZDvcjWlUdfhpBz0C6QH8ffVFQvsHoPbc3HVMsnzBk1Awiel
         FNHTrRJxKQ8zzHpLQSlQZb/iZTt7P4uPoItPbatwADSEtjtaKLu4htisDzpVAS5pdeSK
         OCHD4MKhjjwWYSti12ll0nIN7CPN1Kc47uAjWK1rndwCfbY3tOsbXgYrAYj0bfu+Fzll
         ngCG3vO15SER9XKCAr6TK9BscUoO9NsX+qGW0uqnddMBXImap42uzb7RjTsjgwCEIF/q
         cxZQ==
X-Received: by 10.68.68.167 with SMTP id x7mr25555518pbt.140.1444528348586;
        Sat, 10 Oct 2015 18:52:28 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id ln10sm9447177pab.29.2015.10.10.18.52.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 18:52:28 -0700 (PDT)
Date: Sat, 10 Oct 2015 18:52:27 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: sending patch revisions w mutt ???
Message-ID: <20151011015226.GA3134@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Looking for help threading my patch revisions in mutt.

I use the mutt -H option to send the original and now I want to send v2 threaded.  

I can open mutt, goto thread, select reply, and then read (:r) in the patch
file with vim.  This also means I edit the Subject line manually. None of this is very elegant. 

Is there a better way?

Also, do you want it threaded right on top, ie. in reply to the previous
patch message.

Thanks,
alison

