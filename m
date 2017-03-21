X-GM-THRID: 6400052199989182464
X-Received: by 10.157.13.79 with SMTP id 73mr17403646oti.81.1490128273523;
        Tue, 21 Mar 2017 13:31:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.218 with SMTP id i26ls222661ote.48.gmail; Tue, 21 Mar
 2017 13:31:13 -0700 (PDT)
X-Received: by 10.129.52.17 with SMTP id b17mr18868933ywa.107.1490128273188;
        Tue, 21 Mar 2017 13:31:13 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x233.google.com (mail-pg0-x233.google.com. [2607:f8b0:400e:c05::233])
        by gmr-mx.google.com with ESMTPS id r66si3596655pfb.7.2017.03.21.13.31.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 13:31:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::233 as permitted sender) client-ip=2607:f8b0:400e:c05::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::233 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x233.google.com with SMTP id 21so65506459pgg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 13:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=BnXO1SpM20jezbhFalt2ixSf3furQh4VEQMNtQhd7aw=;
        b=QhbftsrEIXdnadaJIj33vF3rRJrww0/6fvGbp/vm7hnJBRO9tTCEc/l43kRNr29g12
         +7kQqiN2nR+oxOpmDC/M2Sw+ZiiqrGp2raK4gOUqoN9ezSem9XzYtw+ayK+zCaWyK2o7
         ALDwlQSkPU1J9xVx26JAUnMtvXq2y0BORxMpQQOKPocNhdAyu4975JncZ/CoScYhgrCD
         8sEFvjUCb4aHVNI+qfKie/cCjM/MhhuGgLt5JCWrQxrDAhN/y8cjgQCjRfvb69cVnIfh
         pGxjvJlLZXFe5gOaXssJOGcYvuU8AdU7IxR7OWXxWnOXJr6l8OmcHTYocwenvC7yeYrd
         vppA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=BnXO1SpM20jezbhFalt2ixSf3furQh4VEQMNtQhd7aw=;
        b=OaGndP95bVw4y/rIoy7hGUgAi7v9BcLrIyp3tZEI3uZ5LJrpDOQztUWDZbVlPnYrq0
         7LZXNLcQ3VjNXdK4P2FGsNUV2yC6+wdyNGhMo8ZzKVfzHQLmxgf6evQWHX/pue3E6vVe
         lTDduD+tfRfqfBG9XuTr9v4CezlSrBCWdckk1AzzxZ6GkdvPJXfsAc8hvLsY6CWzOerJ
         v7BO0mmXMld1Kgjn0RHnslybPPojk5DR/7ECxJwgUdnZe0gJmMs2fB9qezTejKt7uLda
         slGV/lqpnRs92nF6llfsNL+D8W4my4j+NT4aoLa5iB1NxZQ0AGhI5CB4PF4GBtX7eayN
         ATWQ==
X-Gm-Message-State: AFeK/H0rgDZnc8lc6RM5yvmHtSXMjG9bengQj2vVH1gRUdZgnQ8u5dpzDlM32+LFPupSrQ==
X-Received: by 10.99.67.6 with SMTP id q6mr39309887pga.156.1490128272766;
        Tue, 21 Mar 2017 13:31:12 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id g5sm1610039pgn.18.2017.03.21.13.31.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 13:31:12 -0700 (PDT)
Date: Tue, 21 Mar 2017 13:31:11 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: arushisinghal19971997@gmail.com, gs051095@gmail.com,
	singhalsimran0@gmail.com, karniksayli1995@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: iio meter patches - same!
Message-ID: <20170321203110.GB12475@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Simran, Gargi, Sayli, Arushi,

With respect to these...

meter/ade7753.c: simran singhal
meter/ade7754.c: Gargi Sharma
meter/ade7758_core.c: Sayli Karnik
meter/ade7759.c: ArushiSinghal

They are all near identical and therefore should have near identical
solutions.  You could work together, or follow one another, but, in
the end we don't want to see 4 different flavors of the solution.
That makes it harder to maintain.

Also - if 'we' can get one reviewed/ACK'd/applied, then we make the 
reviewers and maintainers life easier when we follow it with 3 
similar patches.

Here's where I think you all dancing around...
You have Lars' feedback from ade7753:
> It might make sense to reuse the existing lock which currently
> protects the
> read/write functions. You can do this by introducing a variant of
> ade7753_spi_{read,write}_reg_16() that does not take a lock and use
> these to
> implement the read-modify-write cycle in a protected section.

I'll add to that:
They were all using mlock to try to protect the spi read followed by
write operation.  I don't think the lock was actually doing that. 
I don't see a guarantee that another spi write could not intervene,
So perhaps there was no real protection.

I'm thinking one function that locks the existing transaction lock, does
the read, does the write, unlocks.  

Can you all coordinate that please.  This way the next patch we see on
this is agreed upon by all four.  Once that is applauded ;), the others
can follow easily!

thanks,
alison




