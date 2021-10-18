package model.service;

import model.bean.User;

public interface IUserService {
    User showUser (String username, String password);
}
