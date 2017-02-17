X-GM-THRID: 6388168209387749376
X-Received: by 10.107.8.89 with SMTP id 86mr3227517ioi.100.1487361315424;
        Fri, 17 Feb 2017 11:55:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.196 with SMTP id 62ls5494528otq.7.gmail; Fri, 17 Feb
 2017 11:55:15 -0800 (PST)
X-Received: by 10.31.180.143 with SMTP id d137mr2403496vkf.5.1487361315039;
        Fri, 17 Feb 2017 11:55:15 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z73si935555pfa.2.2017.02.17.11.55.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 11:55:14 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e4so4693810pfg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 11:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=SYD83cphloqkO5aIvKrgKb/95VOc/6MZ8teyOqEv6Kk=;
        b=My4CkeCCKkV2rkYbdCfwv/nAdyi8nPd/A9GG1nl2N4Mj2jqvwOtuQoaTcbxSEMzMML
         czcvJw+jB0lAFoEGUBp5iJDz8XOS8SpmF4pj2kHsM6eTY2ONsxoVWAFQgulLrTTfJm0I
         KeBaLpzCcMTLWp6op4JancBlAVXhFubIIFwZx8ztoJKEbq7ghH5cpMYogc4x+Q6R8LD9
         vP5eQ2P8VoryBmcsxl4dO/SbCQpGp3agNWOXU7zk084agXnfnUKpK/7IzVwIvHvvVNOG
         +S8WfyP28DYxN+vzGjRuqWVOIzEx9MLLYTY9fXnFa0aSz9LhtO139MIc4zQvTNUQmiaL
         Oejg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=SYD83cphloqkO5aIvKrgKb/95VOc/6MZ8teyOqEv6Kk=;
        b=FL3zn6HfV3KGxxhnI8IFyVNqLvfh49waW0yZP6mwYxfh+77uQ6YQUObb5FPs1DhawF
         Bem1Kg+B3OpmaDF8z5OkF2xekMz+f8ZUwLI9pH4YX8bx/hJilMOEgpWrXfZrRSQHmCco
         88377lJg5HDdMZBSOPKyhNNvcU6bt21S10dW3rwPyincmVR+KWNHPeWP93lvVro39uOL
         QW/6W3WF17tSpyeuV7X/XWIuIMv22h63AZd/W9hqFlNV9ffUpqCxLCeMwZPon/9mQNn1
         WdA6X/eQ1G10r8rJLfAz6pxu45Ho56M55nruh9XkoOiB334F5T+3FjB24v+ant3vAwvr
         J9SQ==
X-Gm-Message-State: AMke39mhy4TgS45L8Altf4CptrC9WlKu8ZE5AH97tISj8llOPnRMziUlrMCoeV+o91xdaQ==
X-Received: by 10.84.225.18 with SMTP id t18mr13740723plj.154.1487361314814;
        Fri, 17 Feb 2017 11:55:14 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5206:c79d:5773:ab8a:9cfc:4b88])
        by smtp.gmail.com with ESMTPSA id b7sm21114978pfg.53.2017.02.17.11.55.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Feb 2017 11:55:14 -0800 (PST)
Message-ID: <58a75522.07cf620a.9c799.fc53@mx.google.com>
X-Google-Original-Message-ID: <20170217195504.GA7246@<rvarsha016@gmail.com>>
Date: Sat, 18 Feb 2017 01:25:04 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/4] staging: rtl8712: Fix multiple checkpatch issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Fixes multiple checkpatch issues in rtl8712 driver.

Varsha Rao (4):
  staging: rtl8712: Remove unnecessary parentheses.
  staging: rtl8712: Removes the FSF mailing address.
  staging: rtl8712: Remove space after a cast.
  staging: rtl8712: Match alignment with open parenthesis.

 drivers/staging/rtl8712/os_intfs.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

-- 
2.9.3


