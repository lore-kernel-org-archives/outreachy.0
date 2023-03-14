Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9C215AE
	for <outreachy@lists.linux.dev>; Tue, 14 Mar 2023 01:53:49 +0000 (UTC)
Received: by mail-pg1-f178.google.com with SMTP id s17so8051116pgv.4
        for <outreachy@lists.linux.dev>; Mon, 13 Mar 2023 18:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678758829;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pWu7ldioQZyJ2iIlK2I3/QOCPqeIApYJ08ZpgCLDhPk=;
        b=isY/2XDn7wgNpXA/zTgbVVOq2SD+WvckGirGw2TW1zrpIn5d3Rb/hm80wGayu1VAJr
         1owZfggGsmx5HlXXJvUTP0H/CUnVh/r+6VQpAnV5G8cw2noGQu56D5UEDMktuFU0RQY2
         6m2uXhmEEhk+8ZLE3vNiRwnvMdswP7q1a3dzCwdCu0nL0Bx2Y/8EsM6K7ovQmwxLvgdo
         b0CMmM3Sevp/UFzO1OszOuHy0Wf/Irramroz6HaWMSXlQ/3DY4Y4pjWRu20g9UBT1svK
         8U+KXU4n2RaVSrx9wL5N4bhxSruMI1ECj5j6h0iQKrVuoIWmT+mp0A94GLxXPNqv3oh3
         thKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678758829;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pWu7ldioQZyJ2iIlK2I3/QOCPqeIApYJ08ZpgCLDhPk=;
        b=bPFZJ1AW9UNaL21Xk7MAoyugsRSm5NWrX6FTej5IT1o9aAWCom/1dRNMU+39Mcn9L5
         HyIeKHXNrm/RI4R0mJKvmsRNRwraOVPL/pQhQIQukTQBzkJ/wACVtzu2/1BtJra+Q5dC
         sFMsW33cWunCdQZJKuzvFKemcLRSLVTXoHJCoYPyEIdP/gT3nW9u4V+QnL7PQLrPV40m
         rnIluObapzQ02pGOP29K0bYtbZkZ/2tlYoUcaSvhtqM+XL1jk2dzGdpZcZ90rSr+cMA1
         c9+/xLHW6hdIRWCHAWAsDOvmtDdrZVUucXvhOQff0MhhUp0ExXVkSOHmNZs3cnTZU7Bu
         ofpA==
X-Gm-Message-State: AO0yUKU/tY73ynacs6z3SMKEYYeNKrDvOjel44DceQcBZJmHzfmOTEW1
	dWQZABSZ+WFE/HgZRMoqDXDZ2qMkVRj3Cxs5
X-Google-Smtp-Source: AK7set9z6eDylBhX+K4UMTAiIrXM2V7zETL97qm7ncnMyPu3CT0NnoQhqrxvNibjP4U5EFjbWkuZwQ==
X-Received: by 2002:aa7:98c3:0:b0:625:6d5b:c019 with SMTP id e3-20020aa798c3000000b006256d5bc019mr107198pfm.11.1678758829197;
        Mon, 13 Mar 2023 18:53:49 -0700 (PDT)
Received: from CloudiRingWorld ([115.227.138.102])
        by smtp.gmail.com with ESMTPSA id v2-20020aa78502000000b005dd65169628sm346059pfn.144.2023.03.13.18.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 18:53:48 -0700 (PDT)
Date: Tue, 14 Mar 2023 09:53:46 +0800
From: Kloudifold <cloudifold.3125@gmail.com>
To: alison.schofield@intel.com
Cc: outreachy@lists.linux.dev
Subject: Help in patch message
Message-ID: <ZA/Tql5l6dfNaMZ7@CloudiRingWorld>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear Outreachy Mentors,

I hope this email finds you well. As an Outreachy applicant,
I have been working on submitting patches to the kernel, but
I seem to be having trouble getting them accepted. I have
read the Outreachy tutorials and tried to follow the best practices,
but my patch messages keep getting rejected.

I really wonder if I have some kind of language problem, I don't
actually know how to say something?

Recently, I submitted a patch that has been rejected, and I am not
sure whether to go ahead and fix it or create a new one.
I would greatly appreciate your guidance on how to proceed

Thank you for your help and guidance throughout this process.
I look forward to your response.

Best regards,

Kloudifold

