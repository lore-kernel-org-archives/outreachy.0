X-GM-THRID: 6339498322941706240
X-Received: by 10.66.147.138 with SMTP id tk10mr6157048pab.171.1476029474076;
        Sun, 09 Oct 2016 09:11:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.178.80 with SMTP id b77ls2701383iof.47.gmail; Sun, 09 Oct
 2016 09:11:11 -0700 (PDT)
X-Received: by 10.98.78.14 with SMTP id c14mr7456184pfb.19.1476029471002;
        Sun, 09 Oct 2016 09:11:11 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x22a.google.com (mail-yw0-x22a.google.com. [2607:f8b0:4002:c05::22a])
        by gmr-mx.google.com with ESMTPS id h139si1047622ywc.3.2016.10.09.09.11.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 09:11:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::22a as permitted sender) client-ip=2607:f8b0:4002:c05::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::22a as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x22a.google.com with SMTP id t192so38583697ywf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 09:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=aFAxCPUW+5oGsme4U/OdFwwgK2arYRm9tZTIvcT/HMY=;
        b=OuenlBg5NkPF/VP6m9seZCSKASo4IggWMQ9x0hc164ytKZI40ctAVT1p7F2cK+GVFO
         d69zf37pOFzKfVeu2hVgzmTZrqbdBvN0S6RyHWqLUI6U98AR4lsZs/4g7k9hhm5Ehe19
         EfrXrdK/yD6rrz7CE+mgMpLQmQdtlWSlp6R4rLZ+VodlJhtcjp3vv8BZIzdqyh/eHXpH
         WZDCEuwgfjNAfipmItXHxSd97Gnt1RpImwntRzdjSP5ec5qMll08c14tyJXuknjwT5tb
         bJm1el0r38noyBTfGS+VORTmFtphWyUnGzaL98MybmKritRuW1g+qiMIdT76QJSpXljn
         oBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=aFAxCPUW+5oGsme4U/OdFwwgK2arYRm9tZTIvcT/HMY=;
        b=eQFcb0sOJE1KxkXtB/qsmxVa35yqY8MljBhrY8bcoBjg+XXDQTHKhumR4m6GvhMF87
         3e7l8hg++1uyzEUVhnmPC3KHCGb/5WWBLjGLQS4N2D6UVgC4BZFQQrm+nPSkaYWym68k
         nD1UpZHapw0wpfQScsLm5MNAif+ve5yOCNTciehx7WSXgPG9U1N95NE3Tzn/U+FV8a4G
         SBpUu7swabJj/D3vudfuxeVjnfK9UxOYCOIJT6oovj3vxOnMIPUk/iQB00AdAsV4foPm
         VwlARngIqbQkkmorEz8DVTDQ2SbXJ/tXMx5eB0Sp/gL9NUnctU0zgKyKvcEaBlNV0lJg
         SKZQ==
X-Gm-Message-State: AA6/9Rnfi1fntUinJBG5SudPMlspvbeM9Vn9lDvuP6iNwXvVCskMnMMmHvq/KyIAEUvVJFy1VoKoy3H9EeXLGQ==
X-Received: by 10.129.163.72 with SMTP id a69mr2407489ywh.174.1476029470703;
 Sun, 09 Oct 2016 09:11:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Sun, 9 Oct 2016 09:10:30 -0700 (PDT)
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sun, 9 Oct 2016 21:40:30 +0530
Message-ID: <CAKG5xWh4Vqxg5zUyXnptjxR5dxkdtiA670fuv+oHszuUiNot3Q@mail.gmail.com>
Subject: Unable to contact mentor
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello,

I need to send an email regarding my radix tree small task to Rik Van
Riel and Mathew Wilcox. However, my mail delivery system is fails to
send emails to matthew@wil.cx. Perhaps there is something wrong with
the email id?

thanks,
sayli

