X-GM-THRID: 6393429839339061248
X-Received: by 10.157.54.142 with SMTP id h14mr2250024otc.38.1488586384931;
        Fri, 03 Mar 2017 16:13:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.248 with SMTP id t53ls11888916otd.42.gmail; Fri, 03 Mar
 2017 16:13:04 -0800 (PST)
X-Received: by 10.237.56.106 with SMTP id j97mr1723996qte.48.1488586384583;
        Fri, 03 Mar 2017 16:13:04 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s64si334222pfk.0.2017.03.03.16.13.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 16:13:04 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 77so1298249pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 16:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FuaLj8qc04ELAECk30MnfLiAV88CVNhQAlReVYuboG8=;
        b=I+wdPoSNlPPPYXNPLILUQsIAI18YcNCpJST016hTOrLafmMLwZYEcGToH9CPnoK6ZT
         R1EyMmgJTn8+kpPcX7qeewpXQdfVQ5F9i/M8jyxY5KnEOAwEIGTTCFC0gP0jJjejc2GH
         9Lt+1Uwx4Yth4pFD4vDS6nVSnk3h37zR1NTeVHJUpwLcE/snUjX1Vfwo1RD3NeibhoxT
         RL9rSedgTLaGS+pqWOgrroGCUHh+i4pB51JI42zs3BBm3WFx4vVK9nShMX+oxklukQVv
         aUbWpD+C95aMN+Iic7sw17XRw5dpeYU2QdrzjcAwGhuwcpcAHRGW/Zdcw21FZhlv4yf4
         rEqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FuaLj8qc04ELAECk30MnfLiAV88CVNhQAlReVYuboG8=;
        b=tCCNqH2iwgipOS78lJorjuo7nwbDWTWR4nRKksSbgA39btENmBj47eTX67toZtRasa
         HG++PmCClchYhbQ6L5KNPhyF0onPPpnOZZq5wGKB7PTTwMcdIurZ+coiOa8diKk00rhU
         frOsov8hJoprRe/8q946Hun9TyYl9pZ1/D8DS1Ufc3fLk+T6K9UFU/oIiisIOofhRDwD
         Fa0Ynjjxzw5W2aor8d2kCWDJFJQ329ByNUHFUBQvW0Jz0J2wBTe8PaChppeqcbEM7ygN
         AdHWEWMuRraQ0Sw2SNu04VU5uueqC+uoCSTfZTDh3HYFjQd4SCCPcIUY3bc1ldxEewT3
         TBbg==
X-Gm-Message-State: AMke39l/V+gcb7j9QWlbBQP8uFjvsVw6z4FlKBFFvJivGLytmR5AROJ2z3e8osDU4fgyTQ==
X-Received: by 10.84.132.33 with SMTP id 30mr8028924ple.44.1488586384379;
        Fri, 03 Mar 2017 16:13:04 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id t22sm25422338pfa.114.2017.03.03.16.13.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 16:13:03 -0800 (PST)
Date: Fri, 3 Mar 2017 16:13:01 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com, joe@perches.com
Subject: checkpatch post-commit hook
Message-ID: <20170304001259.GA4417@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)


I'm thinking of adding a git post-commit hook to our First Patch Tutorial.

Recently, Joe Perches (checkpatch author) showed us a spelling error
in a log message found by checkpatch and it made me realize we may be
under-utilizing checkpatch in the workflow as defined in the first patch
tutorial.

If you use it pre-commit (and while working a file) it shows you
issues in your files.  But, if you use it on the built patch, you
can also see WARNINGS like:

WARNING: Do not use whitespace before Signed-off-by:
WARNING: please write a paragraph that describes the config symbol fully
WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?

Here's a post commit hook: 

.git/hooks$ cat post-commit
#!/bin/sh
exec git show HEAD | scripts/checkpatch.pl --nosummary

If someone will verify this and agree we should add it - I'll add it to
the first patch tutorial.

And, of course, you'll let me know if there's another/better way
to do it!

alisons

