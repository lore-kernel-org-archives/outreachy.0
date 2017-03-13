X-GM-THRID: 6397014578406883328
X-Received: by 10.31.189.71 with SMTP id n68mr1189945vkf.26.1489421021735;
        Mon, 13 Mar 2017 09:03:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.173 with SMTP id r42ls3005137otb.26.gmail; Mon, 13 Mar
 2017 09:03:41 -0700 (PDT)
X-Received: by 10.129.153.65 with SMTP id q62mr18174588ywg.23.1489421021278;
        Mon, 13 Mar 2017 09:03:41 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x231.google.com (mail-pg0-x231.google.com. [2607:f8b0:400e:c05::231])
        by gmr-mx.google.com with ESMTPS id 2si3246816pfx.8.2017.03.13.09.03.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 09:03:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) client-ip=2607:f8b0:400e:c05::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x231.google.com with SMTP id g2so47944838pge.3
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 09:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eAGqW45MQQ2Pr1gMReJikXgkT7xOthfmcuFgRgvn3Sk=;
        b=kBV/USn+XFAo9RU1Wb/N5cShQqS7Sw9C9smGUjMCDA7L61bEsE3LTwP1x78nPm5zFO
         67srbo1c5AK6PpPxTLgbPapO8kYcskrjwQxUo57wUSREVBjKgEY8JppXz0FBN2PkhJ+c
         pgZeTQTKrRxP5ekl6vuqnrRqLqH3BZ3UjTsdxFtu22rA8etWG/NEdqbA0O4n2YWHI/FA
         VEjYMJ5CMHbxg7F+IDx8foUIPuoLteYJZS2ecPVz6AwI1gzjeYAAqMOYaSTsCCDM0nd7
         pRSS8usDrhC7P/qCIDdJp4l9rS18TmBs2ZSM9Zvey2JbFdtjfaGp6LU0z9JRsvJZ58zo
         NgWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eAGqW45MQQ2Pr1gMReJikXgkT7xOthfmcuFgRgvn3Sk=;
        b=L+p5aAyutQnCzHM879NnV8Ksz7jV1qUKrdrKi++E9FyQ6CTfrC9M1hZs9qmB52vzQU
         GRRLjBo6uOp2ohUSMVsIXCd+Zih2FhezzhtWLtmY7bJVmakXXno2+xnbikBdBoOLzVul
         ZYJH8SSpv3yw1bchG9oWF8AH3veXOYUwCHdF8mi98v4wCzCiyn/Un9J1f1fLxC8kmVi/
         v7ImsJbhZr3Fo1ChZpPRdIRf3YRXYEsvN4CcJh2kfQ3ORwNvpYdDeY2ngGPmsPKBFXIR
         7S9Qq5FBlnYQghmJNJvfy0DDeHreEnuO6jZzirOvsVXl2vm3aBmn+jrMCS7eTOiOqmhj
         7GOA==
X-Gm-Message-State: AMke39kuSPqW9gY96SW23j+nDQS/mEG2xahZjUtXOH0+Euxod+PvRKbvVvoA2SEl8+gU9w==
X-Received: by 10.84.238.9 with SMTP id u9mr49411253plk.174.1489421020873;
        Mon, 13 Mar 2017 09:03:40 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id q194sm33592806pfq.43.2017.03.13.09.03.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 09:03:40 -0700 (PDT)
Date: Mon, 13 Mar 2017 09:03:39 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: IIO mlock task - note this!
Message-ID: <20170313160338.GA1703@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

We're off to an interesting start with this task - to be expected!

Please read all of the feedback on all of the patches - not just
yours.

Lots of good stuff came in from Lars last night.  Absorb it all.

Please note that Simran & Sayli (are mind-readers), and they
sent their patches before I posted the Task directions, so
their 'Send patches to' lists are a bit more than requested
in the directions. 

Please pay attention to this from the directions:
>> Please sign up for one driver at a time, take it all the way through
>> ACK, before selecting another one.

Questions, please ask.

alisons

