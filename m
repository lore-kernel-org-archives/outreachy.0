X-GM-THRID: 6478323397894864896
X-Received: by 10.129.33.67 with SMTP id h64mr1806460ywh.223.1508352206529;
        Wed, 18 Oct 2017 11:43:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.125.10 with SMTP id y10ls397206ywc.8.gmail; Wed, 18 Oct
 2017 11:43:25 -0700 (PDT)
X-Received: by 10.13.196.7 with SMTP id g7mr1586655ywd.131.1508352205807;
        Wed, 18 Oct 2017 11:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508352205; cv=none;
        d=google.com; s=arc-20160816;
        b=bqrycmET0J0pAmsPodRKbsTEfXHw7qgLrHbngrfuWqGAefiBIPNAK0h3yOYZ9I+zIh
         Up90ALADGl6aOx4KX6o4YU0G4Zr1WOw3hHzF1/y+bTzmu9nnOe+nIh5ggON5LsaCNZ6J
         9gzHEh2tz5MQnX0uTD0c4hxFnhiOcvtqMyMBv5itDiVwu3PrAxOFq97kj4KLlB0NuWYP
         eMKv4340tJFmdY79QkiNabHfvTDY8nenz428k5NB77m/k9DV6Yfph3D6G1EDVnpIU1rl
         sZb7T0LKbza3ZSs55JF2qSvkDuuHvKPUE2f++DL7DvVnygN55WN833uYMG8vevXC4Mfd
         aCNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=o2JpupaFaAi+oy1RKdiGsaB4f+xpsdDJPgVvY3nH7Vs=;
        b=P517i7ozRxdb/d/s380XxPcf8TzDNBVWOLa4cPQvVQZ5lRa1ucz+0pmxsbjt8UYfg6
         9aNQvO2NGanLyg34D1wqLnXekclmoyxx2LRkSvl4CnAcdwLjvUoomsB9kfGz5kw5rZLL
         hShNckizjKMcOWTLrcIHVnewW+dSaBMY7kXGJh0PP+/MDbtqQ8H9LiHuIxxbXhUsE1y6
         b+2yc41+O1s8eThleSlagatnugYepVG8vVENDDDUUbw1z5Ny+4Oza+/k1YyTMlVG4Fwu
         2QEZ8fctFPjr0vV3lhwpLfWW7s5obLJF7JUai2vmhBbaBC0QyOF1fCUZ/SDWGK3l1C4w
         l7BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ej0ZBPpZ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id e85si200871ybb.4.2017.10.18.11.43.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 11:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ej0ZBPpZ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id b85so4581114pfj.13
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 11:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=o2JpupaFaAi+oy1RKdiGsaB4f+xpsdDJPgVvY3nH7Vs=;
        b=Ej0ZBPpZKHkXqf8GMA00uzxl4DUBNhW3JXbe+oqtr1Z1kZjze5R1z0GsqB7QXVYzO0
         zEi46tRi1WkufHK+VpfNh5QpwzQESGqtBQm2sy819QDXzaZ9gqXN49F8ivx/YQKq4wT8
         yslACDRYF8EUfqul0xp8FlBl70ZGscPLAl1GttLJcLBr3th/WlL+mMaIUY87WgN+8fxg
         pXyYAC9psVDjrbWlc9rJcvsvRlE8PsSjaHVYik4wOiFvYrtsMGKpP5jbiuNiT3S6Eq3p
         x9XklHERKkqrzJjpgyir582gG65QjCLtmjq3vbeQX9cXbt4xCQn4YtP+qxBxnF2gcikx
         vPhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=o2JpupaFaAi+oy1RKdiGsaB4f+xpsdDJPgVvY3nH7Vs=;
        b=bckdpqKQO+mpLuULavpc5btJpvpGuzXK8ZpyIMYTSZQ/rJY2QLMsyw1/GsSoGEZh+C
         H6N6jY+i9RQslgnt/iBLub3JUKYX11soGdez8w13x4Pf4SxJAad16R31Z3W+90j/+CfQ
         QDzMv6Lt5pN+Ey/UHIoZuZypKVqgRi5BKzp6HuXz+DTvaGKYzHhuePr9XfC9SYuESuaa
         n1Ih3Fj2dtGpUYobLAwz27Df1jHQr2rdzCtHhOuHUOLrBAJXZGuGj//VYnF3nkBopFC+
         7c3QJ3NvJZ8MemmDgUNZmfp7vizvmLU1x3+Hctg9+FU7v5n8LTgQWCg2G6r0bGdVMvl5
         zNlQ==
X-Gm-Message-State: AMCzsaXvVgD8Uz0oLIvQ4EtTGNs+Gl9C1o6iFLYj/EBfGkHFIr23bDyL
	Jzyw4P/5zhnhS0V4Ko8ycDE=
X-Google-Smtp-Source: ABhQp+R3MHmFbefVcTOPx15R2OR0j2IAiIk8Xy89ZXhvr+qg921OCZTSflPUesvQwyWUtOCqdmJvwQ==
X-Received: by 10.84.232.202 with SMTP id x10mr12072211plm.101.1508352204992;
        Wed, 18 Oct 2017 11:43:24 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id 125sm22797780pff.14.2017.10.18.11.43.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 11:43:24 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 0/3] staging: rtl8188eu: fix code styling issues
Date: Thu, 19 Oct 2017 00:12:55 +0530
Message-Id: <1508352178-24942-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

These patches fix:
- whitespaces styling issues
- use pr_cont() instead of printk()
- prefer using BIT macro

Changes in v2:
- removed build errors

Aastha Gupta (3):
  staging: rtl8188eu: prefer using BIT macro
  staging: rtl8188eu: add spaces around '|'
  staging: rtl8188eu: use pr_cont()

 drivers/staging/rtl8188eu/include/ieee80211.h | 84 +++++++++++++--------------
 drivers/staging/rtl8188eu/include/rtw_debug.h |  4 +-
 2 files changed, 44 insertions(+), 44 deletions(-)

-- 
2.7.4


