X-GM-THRID: 6393919120067264512
X-Received: by 10.13.203.131 with SMTP id n125mr4538021ywd.42.1488700304962;
        Sat, 04 Mar 2017 23:51:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.77 with SMTP id c74ls3945520ioe.29.gmail; Sat, 04 Mar
 2017 23:51:44 -0800 (PST)
X-Received: by 10.107.47.2 with SMTP id j2mr4194737ioo.74.1488700304255;
        Sat, 04 Mar 2017 23:51:44 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x236.google.com (mail-it0-x236.google.com. [2607:f8b0:4001:c0b::236])
        by gmr-mx.google.com with ESMTPS id e196si1235491itc.2.2017.03.04.23.51.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 23:51:44 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::236 as permitted sender) client-ip=2607:f8b0:4001:c0b::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::236 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x236.google.com with SMTP id 203so34104809ith.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 23:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=0Kw0K+ncxbDp1iIS4Sem1dPcPY++45QCW4Ugh4iYT4A=;
        b=Lqlyn2P5zfGpRPqtwmCsvb9ePpSH27EZdD+Ycm7rrVmeSNCWc0FDCBNV4CPK7NYQUp
         kQicxjkN0Nqc8gAIgUFNa0tJvf1h4GVg+QucSd/GkerAua1tNIi4nxsMN5IsBgATxn3n
         Ytnl3zHO/bj4+p2+LnSjHXXQk6PJF0NsyLLSKqXHjIg3u/EBBa7H+293HdqF7pKNuko6
         FJ10UOwoxUIFYGZFLs9502lwnoK1FRvqJq4OFNgwLWp3TxcJmWXafXUyDoc6VJp1JT+2
         jUO0PQmRFxpluHVvU2w4bA3pXjWnDkHluTSy1K9ThafzVjPz1z1vzSN8NrRuCROYJacy
         RuSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=0Kw0K+ncxbDp1iIS4Sem1dPcPY++45QCW4Ugh4iYT4A=;
        b=Ui/OUPFGYzKaAQDvt9COuRqGmy/kDcGVVKcqPJTXlxm74KEag+xbPo7ol/FDicoatp
         ALKAurg4KiKx7R9OAqd7nAflFrH0KqX5W+fBSHLBmOu/0t0F3mZa7qqfvjbNAuq1X36I
         fY44QdJue0jEhudPgtLHDbO9rwwiwBIss8NhDMY6JGboiJ7bKrmI/TnAZMO/pFcQ1WE2
         e60MV7MmiGP/ol4IKb2MEYi/lhgBOp+w6MqJsX91rIJ+r9IyCB0QIWpdeUmnPx0LE1IW
         DRB3k2Zp9s+/Vv9ilixZ/2Yp/a5fnLuIsHo+rCP+mfjZvox/irhKjMXbwI6aSB8dowIB
         tnNg==
X-Gm-Message-State: AMke39l7pUwMoWawrjNxu1/DhJj9jkRCs08DNuUbfVVrKwlyn2jPBVUbk3OziIBBrLAZv37ZVLSb2NfeQBVDtQ==
X-Received: by 10.36.129.133 with SMTP id q127mr10861709itd.89.1488700304064;
 Sat, 04 Mar 2017 23:51:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sat, 4 Mar 2017 23:51:13 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
Date: Sun, 5 Mar 2017 13:21:13 +0530
Message-ID: <CAOCi2DHW=2drc7KGQ+9o0utfidZ5OEcDkcAW7tihts1oOY6uoQ@mail.gmail.com>
Subject: Queries regarding Documentation tasks
To: corbet@lwn.net
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=94eb2c08a506cd0bcd0549f70cc2

--94eb2c08a506cd0bcd0549f70cc2
Content-Type: text/plain; charset=UTF-8

Hi,

If one wants to update the documentation, what documentation branch is one
supposed to clone. Additionally, is there any Getting-Started for sending
patches for the documentation tree?

Thanks!
Gargi

--94eb2c08a506cd0bcd0549f70cc2
Content-Type: text/html; charset=UTF-8

<div dir="ltr">Hi,<br><br>If one wants to update the documentation, what documentation branch is one supposed to clone. Additionally, is there any Getting-Started for sending patches for the documentation tree?<br><br>Thanks!<br>Gargi</div>

--94eb2c08a506cd0bcd0549f70cc2--

