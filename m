X-GM-THRID: 6342507675656388608
X-Received: by 10.98.11.81 with SMTP id t78mr7267720pfi.24.1476730144970;
        Mon, 17 Oct 2016 11:49:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.85 with SMTP id a82ls4916076ioj.7.gmail; Mon, 17 Oct
 2016 11:49:04 -0700 (PDT)
X-Received: by 10.107.162.204 with SMTP id l195mr7574177ioe.29.1476730144523;
        Mon, 17 Oct 2016 11:49:04 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f3si1722893pfa.0.2016.10.17.11.49.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 11:49:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id r16so13264827pfg.3
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 11:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tvOqxG1xwKocNC0IZCj1jjnO1y1bTj3gMwQstXMQUx4=;
        b=Y0rT24F6wsdqYtmaqU/nNJBgV5ZYlcwV1SQpw8F2rvuKj8I2C26sFsAv3AAdiBHQ5W
         LhFpiWG7Nada3l4FX6xcfOUc9H6IBS7DnhJ6WF7sP2guuLtX88h5dPTyFDf/JzsZ5+Bq
         ga6SRcwYpdn7fgfscJdFwymML3p5sH7csIOZPMtqgvfGkf/u178Tq1yXFrDK5kpohJaG
         rcmPa/9el5+J3LrhJOZaRZJMcjv6ezq5OdENu+8lXbqHLYfWSSukQGkT384nrk1g3gI9
         AF6jDCVVIgjMTUumkJge6o+Qql9mbmx5hFT3l9nAWA8wXuoJ5xVr/TIXywhLDIZsqfxN
         rnKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tvOqxG1xwKocNC0IZCj1jjnO1y1bTj3gMwQstXMQUx4=;
        b=Le139/UpQHHww+xgpne5KMfuWhKT3+pvkxLpRN0rm9h9P+QqHAHsBUs1JWqSS8q+v0
         UWhHu46z3olTHuDJ8mVW+m/pmZsZOv1FtBY3KyxR7Ttg4rJKEEPo3B69wySG7rQawbYU
         nKqrnZJlHeajngRxwbK8yiYHDa0yxR0FReha4Wba1nLjNUBUXXeweb57hbW7Nq06cMfK
         FR2msfxYmIiBa2d7ipPKs3lbtaLSgqmWqwA6OTiF7u40oDoKQkVQ1Gz61M+CtUN3irrk
         XLknQ7m+ihmvfNly0wZHlz6zAPUSYUEMppWsnKaL73ZcWnEB6cP9+Dsk0F8HRKLPQKmb
         Pspg==
X-Gm-Message-State: AA6/9Rncw/c6rI+4+x3zY/AEuGajwg1ntX0hUN9jIK7BCjTZjCcJ5nbLq20cUmoBrgrP2g==
X-Received: by 10.99.38.66 with SMTP id m63mr32600659pgm.83.1476730144314;
        Mon, 17 Oct 2016 11:49:04 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o82sm49840923pfk.24.2016.10.17.11.49.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 11:49:03 -0700 (PDT)
Date: Tue, 18 Oct 2016 00:18:58 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mawilcox@microsoft.com, riel@surriel.com
Subject: [TASKS] Report for Project: radix tree __alloc_fd
Message-ID: <20161017184858.GA4978@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Reporting my findings for the Project:

radix tree __alloc_fd

Task 1:
Read how sys_open() currently finds the first open file descriptor, and
allocates/resizes the file descriptor table.

The sys_open call has its prototype definition in include/linux/syscalls.h.

asmlinkage long sys_open(const char __user *filename, int flags, umode_t mode);

It takes in the name/path of the file to open, a mask to denote whether it's
read-only, write-only, append mode etc, and a mask to specify the permissions.
It returns a small, non-negative integer as the file descriptor of the file
opened, or -1 in case of error.

It further calls:

long do_sys_open(int dfd, const char __user *filename, int flags, umode_t mode)

with dfd = AT_FDCWD, i.e. to assume current working directory in case of
relative path. 

For the purpose of finding first available file descriptor, it calls:

int get_unused_fd_flags(unsigned flags)

which calls:

int __alloc_fd(struct files_struct *files,
      unsigned start, unsigned end, unsigned flags)

This looks at fdtable object current->files->fdtab (fdt). Next it callls

find_next_fd(fdt, files->next_fd)

fdt->open_fds is a bitmap which tells us the set bits corresponding to open
fds. The call find_next_zero_bit(fdt->open_fds, maxfd, start) finds the next
available fd by checking the next zero bit from the fdt->open_fds bitmap, whose
max size is maxfd, and starting from the offset start which corresponds to
files->next_fd.

After this expand_files(files, fd) is called. If the requested size (fd) exceeds
the current capacity and there is room for expansion, it calls
expand_fdtable(files, fd).

This allocates memory for new_fdt and marks its fields max_fds, open_fds,
full_fds_bits according to new required capacity. 

The call copy_fdtable(new_fdt, cur_fdt) which allocates the new size to the fd
array and copies all the bitmaps from cur_fdt (corresponding to already open
fds) to new_fdt.

We repeat the procedure from __alloc_fd in case the call to expand_files needed
to expand fd array and it resulted in a block. Otherwise we update the
fdt->open_fds (__set_open_fd(fd, fdt)) and return the allocated fd.

This linear search through a bitmap can also be achieved by the IDR interface,
which can replace some custom code in the kernel with generic code (hopefully
shrinking the size of the kernel), could result in some memory savings for
processes with relatively few open files, and hopefully improve performance of
workloads with very large numbers of open files.

Task 2:
Understand the IDR API

IDR API is charged with the allocation of integer ID numbers used with device
names, POSIX timers, and more.

	int idr_pre_get(struct idr *idp, gfp_t gfp_mask);
	int idr_get_new(struct idr *idp, void *ptr, int *id);

The call to idr_pre_get() performs all the memory allocations necessary to
ensure that the following call to idr_get_new() (which returns the newly
allocated ID number and associates it with the given ptr) is able to succeed.

Looking up an existing ID is achieved with:
	void *idr_find(struct idr *idp, int id);
The return value will be the pointer associated with the given id, or NULL
otherwise.

To deallocate an ID, use:
    void idr_remove(struct idr *idp, int id);

With these functions, kernel code can generate ID numbers to use as minor
device numbers, inode numbers, or in any other place where small integer IDs
are useful, for instance file descriptors.

Timeline for project - Radix tree __alloc_fd:
- Get a deeper understanding of __alloc_fd implementation, and also IDR api
implementation and clear any doubts about it.(1-2 weeks)
- Implement a sample usage of the IDR api to achieve the basic functionality of
the search for next fd by the __alloc_fd. (1-2 weeks)
- Integrate the IDR api to the __alloc_fd functionality and make required
changes to __alloc_fd according to the new functionality (2-3 weeks).
- Document the changes. Report the decrease in size of kernel code and
performance improvement, and memory savings. (1 week)
- Any other cleanups/refactoring/modifications required to the code
implemented. (1-2 weeks).
- Buffer time for unexpected delays, or necessary work unidentified in the
beginning. (1-2 weeks).

Thanks a lot!

Rehas

