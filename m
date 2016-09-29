X-GM-THRID: 6335813974195437568
X-Received: by 10.66.27.196 with SMTP id v4mr721007pag.46.1475171645342;
        Thu, 29 Sep 2016 10:54:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.40 with SMTP id 37ls3749315otr.25.gmail; Thu, 29 Sep
 2016 10:54:04 -0700 (PDT)
X-Received: by 10.129.73.65 with SMTP id w62mr778484ywa.28.1475171644907;
        Thu, 29 Sep 2016 10:54:04 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id f12si3540939pfk.0.2016.09.29.10.54.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 10:54:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id cd13so26656902pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 10:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Yjvvv2NM+fiXJNpzjBIltShhyZeXyPW8gxbZreC46MM=;
        b=0DvO7/BEU5KMh13AFB4GGTrHPum313Q+fMEiGDRZr6GvyypD/pDcySoY4oInKNYfmR
         BvaMoQ+p7f0JkzGIw7/kAi/CmY0yK8gGJeirauBvEApSH2IjbVMnaJ9Rt6kiM/ZMvC/q
         C4SQdMC6U8ml4MGj0eg+Z8ydAlm+H2SB1K6vdgUUI6QcVMyKOX85qPDPTrs1vGqiZZjO
         IUs2jOs7Mc6ThDJy9X/9WS7t6lqpxME7E/7+Jotil1hMjrnBvMtZ5vQ6zFNBoMKNEI6K
         ISZODVSOnWiv9jLczmc4wGnb4OY7MdM17oxKoMNWCc1UGIqVv/0Lz6GsK7a7KCLkFgaT
         dFsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Yjvvv2NM+fiXJNpzjBIltShhyZeXyPW8gxbZreC46MM=;
        b=mIXyLnqX9YhezuVwsMreD+4OEJTOBPD6NHGYKOaXDYU/jbufyESGHztVRogTa7SL5L
         EOvB3ym1HZnZ1JSoBBnsrLUWC0N8Vd8nTEGW0dPv9LuRxDlR6duReQ6ShISsyU1BrHmG
         DDm9vYQ6QDqffS+yBo72lmJsYWc8QSBKUDD44OnRLnm4iAhqA4xGLe6X6RDYDpe/+hzQ
         JLeTx7ORGncp4tve0XGgUBn1jBigzb9+umQ97ocB0YVXXNt/DnND6oHWtwUbYqXHl5ZU
         mEGyLEetlnZgGseIn67xzdVxdn+7Nbaj1NiLUGys+sRilVjvA+Ir6Nui1f7z4soiwsfQ
         IVeQ==
X-Gm-Message-State: AA6/9RnnyVHwQ8VDOOz6uqACR+2d0DT3+gaLUjPfcsccW/eWZ/Qbv9i4S5+X0GjknQXUEw==
X-Received: by 10.66.193.135 with SMTP id ho7mr4527840pac.12.1475171644721;
        Thu, 29 Sep 2016 10:54:04 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id q8sm21837592pac.32.2016.09.29.10.54.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 10:54:04 -0700 (PDT)
Date: Thu, 29 Sep 2016 10:54:02 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: juia.lawall@lip6.fr, amsfield22@gmail.com
Subject: mail delivery subsystem failure
Message-ID: <20160929175401.GB3294@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

I'm trying to group-reply to a message Julia sent about my patch. It
fails to send and I get this error for each recipient from Mail Delivery
Subsystem: "Delivery to the following recipient failed permanently:"

It's making it impossible to group-reply from mutt because google thinks
it's spam... I tried doing it a second time but the same thing happened.
I believe I've group replied before and it worked fine.

Technical details of permanent failure:
Message rejected. See https://support.google.com/mail/answer/69585 for
more information.

