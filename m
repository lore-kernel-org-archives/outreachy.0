X-GM-THRID: 6397037316898029568
X-Received: by 10.99.64.129 with SMTP id n123mr17403308pga.61.1489426315832;
        Mon, 13 Mar 2017 10:31:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.33 with SMTP id d30ls15897999otb.17.gmail; Mon, 13 Mar
 2017 10:31:55 -0700 (PDT)
X-Received: by 10.129.69.37 with SMTP id s37mr17625581ywa.147.1489426315359;
        Mon, 13 Mar 2017 10:31:55 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si3121241pfz.1.2017.03.13.10.31.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 10:31:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id v190so19668490pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 10:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/IdasaUO7FTkT+rXgjWo0Q/vwea0HmYjMhy6Lo67Qm4=;
        b=Vkin4a1UFzlib/UyNbhP0tMTYBMPHKmqVvdWsqcxyEIXgb9juaAK2Z6HPgRzP8lbYO
         UJ2Nqf8fmbkAlqlrOsGUSyBxbGSkeWzFukS6mWgP0cFfQ6gcVd4aR1fxBkbzoUAKCN9c
         2uv4iJNac4zP/my/cxHUTeXw9lHdjPeoev/auDlaghnYpSJatEfN8qTIS0EUTrnC3njO
         H9B73ePg0YT0/cr27Aqze222ihkPmBluorc3zE0cSWS71+H16Qy7vUieUca2GGnGcQ80
         SsY6tRXOz04hEAKKjQLqCJIdt23nidehqNgRWKuherQweG15jwDW+8XjUCFUGcc6JpAn
         Yx6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/IdasaUO7FTkT+rXgjWo0Q/vwea0HmYjMhy6Lo67Qm4=;
        b=LwppjKC59qq0tlbzD18AeKOpPBVeYkbQe38GnHbHlxuQ0thk40p2Dcv+W7gF+uuf5C
         2+/T12nr2adtZrL7zwLUUWeidWpfcqBVbmt9LPRsIVsE5a149RoBBLBBN9e5DECvLq+l
         MNlgvpw+vzbFtWmvRQ5Mhr6vsMrzfzznYj7w1r0DWOoZ2nHFqnpTFZ2YaZCENJg6qsUw
         PGK/K+HN/mXsE8drbWLB069+gXWuyEoQGIToeUKMwYHZ71ylbUHZwUAso6sbAeySSuUa
         FhdeP43JcKPxb9iD5FZkkeGYL0pAVTjON3aPTillVcpUSPPs3Zwv/atE06LQfLKJdxT9
         KX7Q==
X-Gm-Message-State: AMke39mGfPKRbCkyOGqMZTRKpL03Gt133XpIX3TLs2nkQ4x+rhkRS56DUna/7rAPUHJYsQ==
X-Received: by 10.98.107.194 with SMTP id g185mr39312369pfc.22.1489426314961;
        Mon, 13 Mar 2017 10:31:54 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([117.195.100.155])
        by smtp.gmail.com with ESMTPSA id o125sm33823064pfb.109.2017.03.13.10.31.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 10:31:54 -0700 (PDT)
Date: Mon, 13 Mar 2017 15:27:31 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [KERNEL NEWBIES ACCESS] AishwaryaPant
Message-ID: <20170313095731.GA3648@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello

I would like access to edit privileges on kernerlnewbies to I can
start working on tasks.

Thanks
Aishwarya

