X-GM-THRID: 6609200682225369088
X-Received: by 2002:a24:5695:: with SMTP id o143-v6mr3156640itb.19.1538911950682;
        Sun, 07 Oct 2018 04:32:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7d41:: with SMTP id d1-v6ls4216289ioq.7.gmail; Sun, 07
 Oct 2018 04:32:29 -0700 (PDT)
X-Google-Smtp-Source: ACcGV6279j5vFwDi6icfN1fZMnxyT8Nt3VdTgX+KuklI4KQ7e6wxGaf7Ox9YMksUZPDhw3RM0y1A
X-Received: by 2002:a6b:7a08:: with SMTP id h8-v6mr12971779iom.22.1538911949739;
        Sun, 07 Oct 2018 04:32:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538911949; cv=none;
        d=google.com; s=arc-20160816;
        b=b/6nq9xjaaozZsM0RyYyCsHb1GX/2kjfjcrZqufXz5hb+QDvLpP1AsURS8eENLLrm5
         mfibkR/riykHL5LikBONetEnacTZ59DJ3mDHHPck5HmS3lrN8baR4DU8cQYa2UF5aP7r
         VWt7jTVSTVP3PEi/QXOzl/BzMHktQT4W/J2XYUrCV591N9ojbwr2PK0ZU55AMVfA4EBt
         +Gy0w9xq2SI+yI0diXpMITjR3BYcikEgcIvupY51fMcNakECrUXcFe8MwNHgb9XGVboW
         zhRM3G5Q86A/23SmIgHHse5b5GRSruePcN0qR6mE6Cs6tNW7w8cA/7hhA+QwYRBbI9ja
         HYAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:cc:to:reply-to:subject:from:dkim-signature;
        bh=SPNx+bx9QmuQEmOmkRz9+PBISeEuJwHEBmBkLbqdXkA=;
        b=vS4rUmAHMYlQ5pDgn+0zVz7130lEMjUnT9qSy35w6tFwvMpCVkazlz02BGwbE50C73
         7Dn9YNhrMKB3MEgmA+ar9Rqzt0RRcmgXRSGb2blq8WRaxmSIWUyUxddIE4QrFo/RwgUY
         3UCiRzSLg+1erjcNAxkNgEbyFTnWb722PDUU2dvlpWWr++gCDYjEHaAg0B5A8CZdlmPe
         zlSv1OAmOLpluC9v9DLmMElo36UzOY7/kEz/6BhDOmQQ/XXfsgJx+JXApOIaHmhbSZYd
         hrH25hjpaQYFYKWBzU+ZtWbAJugCQZnjMY/Oc+98+EKxygXBbuUStjKFg3l5DgU4hNCQ
         1p2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O2BBVxFh;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id b133-v6si400258itc.3.2018.10.07.04.32.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 04:32:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O2BBVxFh;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id 23-v6so6597061pgc.8
        for <outreachy-kernel@googlegroups.com>; Sun, 07 Oct 2018 04:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:reply-to:to:cc:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=SPNx+bx9QmuQEmOmkRz9+PBISeEuJwHEBmBkLbqdXkA=;
        b=O2BBVxFh6/Wg7Epvqz5urB6XSaS7jHe/iDB9wFiZq2bwEDsxmGGTzLIS2VRrS7tOnH
         h8sq1Wfiyg97moC0A2qxsVZbRblYEdnMZxWngYSZtzSlnCYKwqFLpHCRXgfkIgBaezDL
         sa8tLJizCjXRn+WzsjVqHCcJrbDFcID7cK9tNJjIrCmTlOIXd9Pr3DnPLJE+rDXuVccG
         3FsJ2xQWWSOghgGpHsMb9SgKYVBz2maIkL3mXgV4IYBlA/ARNLTKdpjdKRBv34bUb023
         9IUyV53QoFsOYflt0j6ozZRudmuFd+SYEaPgnmLzsgzTVXiHRKrZN2eca8lQWzutWUWT
         irtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:reply-to:to:cc:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding;
        bh=SPNx+bx9QmuQEmOmkRz9+PBISeEuJwHEBmBkLbqdXkA=;
        b=Ttebu3dEHd/deyx4Ul6HCVfTu9CygMMMa4POTxeH/txybZO2dz6HHNkcrjPzf8WJNK
         Bs4tJVdLiKrslnkK7NcoHL/+D4UuutgJylyLa3dtvmrIKWwQWPcYmrBKDTwuiTPYlFw5
         KdHdwaPWjLh3TSer8HHNUGP0NdqdDJEB4RGy9gzBkvZY5mEhUourI9g/B63Bb3S+el0w
         nEiLfGvyGdV4O6YDAemGzC2NWPIOz+na7kCiYXGDhv2E0pVLYN8RBmbRZ80nUYMIRc9a
         K8OnceevOAllNg0A8W0eCpXmYIUWi71eiJpDwzzBU0/kXTH4H8nYMHEMpIP8N7CDYeoO
         l1Tg==
X-Gm-Message-State: ABuFfojCYANFdFGtm1e0UmwjS+50OFqAgB+CYtSsung13MCxCehyIQ3S
	9UYEDCKx2MzS3G3YSDAUfOA=
X-Received: by 2002:a62:a116:: with SMTP id b22-v6mr19946301pff.99.1538911949079;
        Sun, 07 Oct 2018 04:32:29 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from [192.168.1.5] ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id x20-v6sm26484879pfe.131.2018.10.07.04.32.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 04:32:28 -0700 (PDT)
From: Bhanusree <bhanusreemahesh@gmail.com>
Subject: [Outreachy kernel][PATCH v7] staging:comedi:comedi_pci.h Prefer a
 maximum 75 chars per line
Reply-To: bhanu20anu@gmail.com
To: outreachy-kernel@googlegroups.com
Cc: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org
Message-ID: <1d352f7b-f146-73af-23bc-5301c9cd035a@gmail.com>
Date: Sun, 7 Oct 2018 17:02:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

comedi_pci_auto_config() function prototype is exceeding more than
75 characters per line. Adjusted to 75 chars to improve readability

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

changes in v7:
-Kernel cannot handle the wrapped lines.
-Modified the commit message.

changes in v6:
-Always commit on the base version.

changes in v5:
-Fixed Change log
-Change in subject line. Do not send as 'Re:'

changes in v4:
-Remove Whitespace in comment section of module_comedi_pci_driver()
  to fix checkpatch Error.

changes in v3:
-Comment section of module_pci_driver() exceeds 75 characters.
  Adjust the chars to 75 per line
-Modified log message.
-Added change log.

changes in v2:
-comedi_pci_auto_config() function prototype is exceeds
  75 characters per line. Adjust to 75 chars to improve
  readability and also adjust the arguments to match open
  parantheses.
-Comment section of module_comedi_pci_driver() exceeds 75
  characters. Modified contents to adjust 75 chars per line.

  drivers/staging/comedi/comedi_pci.h | 3 ++-
  1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_pci.h 
b/drivers/staging/comedi/comedi_pci.h
index 4e069440cbdc..9c143953ea40 100644
--- a/drivers/staging/comedi/comedi_pci.h
+++ b/drivers/staging/comedi/comedi_pci.h
@@ -31,7 +31,8 @@ int comedi_pci_enable(struct comedi_device *dev);
  void comedi_pci_disable(struct comedi_device *dev);
  void comedi_pci_detach(struct comedi_device *dev);
  -int comedi_pci_auto_config(struct pci_dev *pcidev, struct 
comedi_driver *driver,
+int comedi_pci_auto_config(struct pci_dev *pcidev,
+			   struct comedi_driver *driver,
  			   unsigned long context);
  void comedi_pci_auto_unconfig(struct pci_dev *pcidev);
  -- 2.17.1


