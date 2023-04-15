package ru.novitskaya.core.services.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ru.novitskaya.core.repositories.RoleRepository;
import ru.novitskaya.core.services.RoleService;

@Service
@RequiredArgsConstructor
public class RoleServiceImpl implements RoleService {
    private final RoleRepository roleRepository;

}