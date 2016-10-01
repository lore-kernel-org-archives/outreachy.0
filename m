X-GM-THRID: 6336586801480728576
X-Received: by 10.31.63.203 with SMTP id m194mr1127533vka.22.1475351583291;
        Sat, 01 Oct 2016 12:53:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.139.4 with SMTP id n4ls367670iod.14.gmail; Sat, 01 Oct
 2016 12:53:02 -0700 (PDT)
X-Received: by 10.67.6.199 with SMTP id cw7mr3835576pad.76.1475351582129;
        Sat, 01 Oct 2016 12:53:02 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id 128si462196pfz.2.2016.10.01.12.53.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 12:53:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id qn7so48684632pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 12:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RgvJ8jjPvR0VeTkHPcUEzO35XsdkawtMhUC81cN7fu4=;
        b=PlWnhEDXx98/ldk0PrVxgragoalC9RYT0NpPcjGF1cbpyIIlhJkc0UHyaXcqTHXP8O
         Wmj6d6cQ1go/cKclwwgVe3QnPsQBqGRgxj+/7Ro2sK/fpemey00UOJ/iu1lBlomm+Ecj
         sAQsfrrKy5/1W/3uU5E+iUHF7Ii/nf6JCwN7cxGB6szprzyvu8rcW0BvoPYQzQmsGRUB
         6go7KjVucWXhrI/4bsv9b4lnW6/34HT0G5Yh4JLOoCDEpmyI4apMVnQ0PsYMcthcE3OG
         KQrBE/FyqX7oxufEgsKMVDaK2Yv0YuYyn9l6fUUPBzvOpycvFJ6yUlgvLTC+gwYHtiXm
         RsLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RgvJ8jjPvR0VeTkHPcUEzO35XsdkawtMhUC81cN7fu4=;
        b=gmbz81UZMhBEH2qe8FaXXP2JSwv28rUggzxpsaNYktW+ptsrXBiWa1T5frsWgTHZi/
         IGbHqMdSjploHU1o7Rm2zbbldJFNNvLv/J5muS7KKMXowiOHnpk8Yl0i8RAlGmkfvw6Q
         RXaphwD02dXiPf5K4ZnUnjuyCwYyHh4KZlN96kyAh//D3pE3ytRj1ved6bEN5IiNVPVi
         7wP1NHw9DNZ/CWVsgRASvzBzQy311H8aDe8nzCCz0NRC/nc+noXlJo1WAyVe2koyndui
         YB7FZunxdBqbUZqFjYNQIhw7wKdtUbKg8g7yg18B55if05Vnu2qQc5XkOnlx4r0Ff4QT
         HnZA==
X-Gm-Message-State: AA6/9Rnw5LrQwoCf1Gh6Josa583xnSrNefdxakmXt22NDUSK7RSc1zXO6eza9LW+TphS8A==
X-Received: by 10.66.199.38 with SMTP id jh6mr23113524pac.160.1475351581805;
        Sat, 01 Oct 2016 12:53:01 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id wd7sm36761798pab.2.2016.10.01.12.53.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 01 Oct 2016 12:53:01 -0700 (PDT)
Date: Sat, 1 Oct 2016 12:52:59 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: IIO Experiment #1 Build Dummy Help
Message-ID: <20161001195259.GB12284@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

If you have questions about building the modules in IIO Experimenting
Task #1, please post here.

If you can help those who are having troubles, please post that here
also.

Thanks!
alisons

